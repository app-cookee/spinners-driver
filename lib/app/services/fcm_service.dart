import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:spinners_driver/app/services/fcm_navigation_service.dart';
import 'package:spinners_driver/firebase_options.dart';

@injectable
class FCMService {
  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.high,
    sound: RawResourceAndroidNotificationSound('notify'),
    playSound: true,
  );

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> initialize() async {
    log("testing fcm");
    await requestPermissionIfNeeded();
    await _initializeBackgroundMessage();
    await _initializeLocalMessage();
    await _messageTerminatedHandler();
    await getFirebaseToken();
  }

  Future<void> requestPermissionIfNeeded() async {
    log("permission asking");
    try {
      await _fcm.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        carPlay: false,
        criticalAlert: true,
        provisional: true,
        sound: true,
      );
    } catch (e) {
      log('Permission Error : $e', name: 'FCM');
    }
  }

  Future<String> getFirebaseToken() async {
    var token = '';
    try {
      token = (await _fcm.getToken())!;
      log(token, name: 'Firebase Token');
    } catch (e) {
      log('Get Token Error : $e', name: 'FCM');
    }
    return token;
  }

  // Method to unregister Firebase messaging token
  Future<void> unregisterToken() async {
    try {
      await _fcm.deleteToken();
    } catch (e) {
      log('Error unregistering Firebase messaging token: $e');
    }
  }

  // Method to re-register Firebase messaging token
  Future<void> registerToken() async {
    try {
      await _fcm.getToken();
    } catch (e) {
      log('Error registering Firebase messaging token: $e');
    }
  }

  Future<void> _initializeBackgroundMessage() async {
    try {
      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
      FirebaseMessaging.onMessageOpenedApp.listen(_messageOpenedAppHandler);
      log('Background messaging initialized',
          name: 'FIREBASE BACKGROUND NOTIFICATION');
    } catch (e) {
      log('Background Services Initializing Error : $e',
          name: 'ERROR: FIREBASE BACKGROUND NOTIFICATION');
    }
  }

  Future<void> _initializeLocalMessage() async {
    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    const initializationSettingsAndroid =
        AndroidInitializationSettings('drawable/ic_notification');
    const initializationSettingsIOS = DarwinInitializationSettings();
    const initialSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );
    // await _flutterLocalNotificationsPlugin.initialize(initialSettings);
    // await _flutterLocalNotificationsPlugin.initialize(initialSettings, onDidReceiveNotificationResponse: (response) async {
    //   // Handle notification click when the app is in foreground
    //   RemoteMessage message = RemoteMessage(data: {"payload": payload});
    //   _messageOpenedAppHandlerForeground(message);
    //     });
    await _flutterLocalNotificationsPlugin.initialize(
      initialSettings,
      onDidReceiveNotificationResponse: (response) async {
        if (response.payload != null) {
          try {
            final Map<String, dynamic> data =
                jsonDecode(response.payload!) as Map<String, dynamic>;
            log('📲 Local Notification Clicked with data: $data', name: 'FCM');
            final message = RemoteMessage(data: data);
            _messageOpenedAppHandlerForeground(message);
          } catch (e) {
            log('❌ Error parsing notification payload: $e', name: 'FCM');
          }
        }
      },
    );

    FirebaseMessaging.onMessage.listen(_foregroundMessageHandler);
    await _fcm.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void _foregroundMessageHandler(RemoteMessage message) async {
    // Log the entire message object
    log('🔔 Foreground FCM Message: ${message.toMap()}', name: 'FCM');
    // navigatorKey.currentContext!.read<ActivityLogBloc>().add(const ActivityLogEvent.getActivityLogs(status: 'sent', limit: 10, skip: 0));
    // if (Platform.isAndroid) {
    // For iOS, we'll use a different approach
    if (Platform.isIOS) {
      // Don't show a local notification on iOS - let the system handle it
      // But we need to ensure the system actually shows the notification
      // This is just to log that we received the message
      log('Received foreground message on iOS: ${message.notification?.title}',
          name: 'FCM');
      return;
    }
    final notification = message.notification;
    final androidNotificationDetails = AndroidNotificationDetails(
      channel.id,
      channel.name,
      channelDescription: channel.description,
      icon: 'drawable/ic_notification',
      importance: channel.importance,
      playSound: channel.playSound,
      sound: channel.sound,
    );
    const iosNotificationDetails = DarwinNotificationDetails(
      sound: 'notify.aiff',
      presentSound: true,
      presentBadge: true,
      presentAlert: true,
    );
    await _flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification?.title,
      notification?.body,
      NotificationDetails(
        iOS: iosNotificationDetails,
        android: androidNotificationDetails,
      ),
      payload: jsonEncode(message.data),
    );
    // }
  }

  Future<void> _messageTerminatedHandler() async {
    await _fcm.getInitialMessage().then((RemoteMessage? message) async {
      if (message != null) {
        //TODO: Handle message on the terminated state of the app
      }
    });
  }

  void _messageOpenedAppHandler(RemoteMessage message) {
    log('📲 Opened FCM Message: ${message.toMap()}', name: 'FCM');
    FCMNavigationService().init(message, false);
    log('Notification opened', name: 'FCM');
  }

  void _messageOpenedAppHandlerForeground(RemoteMessage message) {
    log('📲 Foreground Opened FCM Message: ${message.toMap()}', name: 'FCM');
    FCMNavigationService().init(message, true);
    log('Notification opened', name: 'FCM');
  }
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  log('📩 Background FCM Message: ${message.toMap()}', name: 'FCM');
  final receiver = ReceivePort();
  IsolateNameServer.registerPortWithName(receiver.sendPort, 'ringtone');
  receiver.listen((message) async {});
}

extension RemoteMessageLogger on RemoteMessage {
  Map<String, dynamic> toMap() {
    return {
      'messageId': messageId,
      'sentTime': sentTime?.toIso8601String(),
      'from': from,
      'category': category,
      'collapseKey': collapseKey,
      'contentAvailable': contentAvailable,
      'mutableContent': mutableContent,
      'ttl': ttl,
      'data': data,
      'notification': notification == null
          ? null
          : {
              'title': notification?.title,
              'body': notification?.body,
              'android': {
                'channelId': notification?.android?.channelId,
                'clickAction': notification?.android?.clickAction,
                'color': notification?.android?.color,
                'count': notification?.android?.count,
                'imageUrl': notification?.android?.imageUrl,
                'link': notification?.android?.link,
                'smallIcon': notification?.android?.smallIcon,
                'sound': notification?.android?.sound,
                'ticker': notification?.android?.ticker,
                'visibility': notification?.android?.visibility,
              },
              'apple': {
                'subtitle': notification?.apple?.subtitle,
                'badge': notification?.apple?.badge,
                'sound': notification?.apple?.sound?.name,
              }
            }
    };
  }
}
