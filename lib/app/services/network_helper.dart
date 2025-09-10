import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:spinners_driver/src/application/network_bloc/network_bloc.dart';

class NetworkHelper {
  static void observeNetwork() {
    Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> results) {
      // Get the first result from the list
      final result = results.firstOrNull ?? ConnectivityResult.none;
      
      log(result.toString(), name: 'Network Status');
      if (result == ConnectivityResult.none) {
        NetworkBloc().add(const NetworkEvent.notify(false));
      } else {
        NetworkBloc().add(const NetworkEvent.notify(true));
      }
    });
  }
}

