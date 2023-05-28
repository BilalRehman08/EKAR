import 'package:ekar_project/views/onboard_view.dart';
import 'package:ekar_project/views/vehicle_view/vehicle_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../views/map_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: EkarMapView, initial: true),
    MaterialRoute(page: VehicleView),
    MaterialRoute(page: OnBoardView)
  ],
  dependencies: [
    LazySingleton(classType: NavigationService)
    // LazySingleton(classType: LocationService),
    // LazySingleton(classType: MapService),
    // LazySingleton(classType: VehicleService),
    // LazySingleton(classType: OnBoardService),
  ],
)
class App {}
