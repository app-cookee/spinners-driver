import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spinners_driver/app/app.dart';
import 'package:flutter/services.dart';
import 'package:spinners_driver/app/services/local_storage_service.dart';
import 'package:spinners_driver/app/locator/locator.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();                  


  /// Configure environment [staging, production, qa]
  // EnvConfiguration().init(Env.staging);

  ///Device orientation
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  // Initializing Firebase
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /// Configuring Locator dependencies
  configureDependencies();

  /// Initializing local storage service
  await LocalStorage.init();
  runApp(MyApp());
}
