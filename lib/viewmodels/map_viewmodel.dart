import 'dart:async';
import 'package:ekar_project/app/app.router.dart';
import 'package:ekar_project/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EkarMapViewModel extends BaseViewModel {
  NavigationService navigationService = NavigationService();

  navigateToVehicleView() {
    navigationService.navigateTo(Routes.vehicleView);
  }

  final Completer<GoogleMapController> controller =
      Completer<GoogleMapController>();

  Position? currentPosition;
  Set<Marker> markers = <Marker>{};

  void onInit() {
    _checkLocationPermission();
  }

  void _checkLocationPermission() async {
    // write code for get context through stacked service locator
    print("in permission");
    PermissionStatus permissionStatus =
        await Permission.locationWhenInUse.status;
    if (permissionStatus.isGranted) {
      print("isGranted");
      _getCurrentLocation();
    } else if (permissionStatus.isDenied) {
      print("isDenied");
      _requestLocationPermission();
    } else if (permissionStatus.isPermanentlyDenied) {
      print("isPermanentlyDenied");
      // Handle permanently denied permission
      openAppSettings();
      print("openAppSettings");
    } else if (permissionStatus.isRestricted || permissionStatus.isLimited) {
      print("isRestricted");
      // Handle restricted or limited permission
    }
    rebuildUi();
  }

  void _requestLocationPermission() async {
    print("in request permission");
    PermissionStatus status = await Permission.location.request();
    print('status' + status.toString());
    if (status.isGranted) {
      _getCurrentLocation();
    }
    if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }

  void _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    final imageByteData = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(
          size: Size(2, 2),
        ),
        AppImages.marker);
    currentPosition = position;
    markers.clear();
    markers.add(
      Marker(
          icon: imageByteData,
          markerId: const MarkerId('currentLocation'),
          position: LatLng(position.latitude, position.longitude),
          onTap: () async {
            navigateToVehicleView();
          }),
    );
    rebuildUi();
  }
}
