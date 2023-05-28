import 'package:ekar_project/app/app.router.dart';
import 'package:ekar_project/viewmodels/vehicle_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../helpers/test_helpers.mocks.dart';

void main() {
  late VehicleViewModel viewModel;
  late MockNavigationService mockNavigationService;

  setUp(() {
    viewModel = VehicleViewModel();
    mockNavigationService = MockNavigationService();
    viewModel.navigationService = mockNavigationService;
  });

  group('VehicleViewModel', () {
    test('navigateToOnBoardView should navigate to the onBoardView route', () {
      viewModel.navigateToOnBoardView();

      verify(mockNavigationService.navigateTo(Routes.onBoardView)).called(1);
    });

    test('currentIndex should have an initial value of 0', () {
      expect(viewModel.currentIndex, equals(0));
    });

    test('currentSliderValue should have an initial value of 1', () {
      expect(viewModel.currentSliderValue, equals(1));
    });
  });
}
