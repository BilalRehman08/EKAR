import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../api/api_services.dart';
import '../app/app.router.dart';
import '../model/vehicle_images.dart';
import '../model/vehicle_model.dart';
import '../services/interner_service.dart';

class VehicleViewModel extends BaseViewModel {
  NavigationService navigationService = NavigationService();
  final InternetService _internetService = InternetService();
  VehicleModel? vehicleResponse;
  VehicleImages? vehicleImagesResponse;
  onInit() async {
    _listenToConnectivityChanges();
    bool isConnected = await _internetService.checkInternetConnectivity();
    if (!isConnected) {
      Fluttertoast.showToast(msg: "No Internet Connection");
    } else {
      vehicleResponse = await ApiService().getCarSpecs();
      vehicleImagesResponse = await ApiService().getCarImages(
        year: vehicleResponse!.attributes?.year ?? '',
        make: vehicleResponse!.attributes?.make ?? '',
        model: vehicleResponse!.attributes?.model ?? '',
      );
    }
    rebuildUi();
  }

  navigateToOnBoardView() {
    navigationService.navigateTo(Routes.onBoardView);
  }

  void _listenToConnectivityChanges() {
    _internetService.onInternetStatusChanged.listen((isConnected) async {
      if (!isConnected) {
        Fluttertoast.showToast(msg: "No Internet Connection");
      } else {
        vehicleResponse = await ApiService().getCarSpecs();
        vehicleImagesResponse = await ApiService().getCarImages(
          year: vehicleResponse!.attributes?.year ?? '',
          make: vehicleResponse!.attributes?.make ?? '',
          model: vehicleResponse!.attributes?.model ?? '',
        );
        rebuildUi();
      }
    });
  }

  int currentIndex = 0;
  double currentSliderValue = 1;
}
