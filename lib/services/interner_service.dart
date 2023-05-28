import 'package:connectivity_plus/connectivity_plus.dart';

class InternetService {
  Future<bool> checkInternetConnectivity() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  Stream<bool> get onInternetStatusChanged {
    return Connectivity().onConnectivityChanged.map((result) {
      return result != ConnectivityResult.none;
    });
  }
}
