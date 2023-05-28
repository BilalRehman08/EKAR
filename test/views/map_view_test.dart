import 'package:ekar_project/views/map_view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ekar_project/viewmodels/map_viewmodel.dart';
import 'package:ekar_project/widgets/custom_appbar.dart';
import 'package:ekar_project/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  testWidgets(
      'EkarMapView widget should show LoaderWidget when current position is null',
      (WidgetTester tester) async {
    final viewModel = EkarMapViewModel();
    viewModel.currentPosition = null;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: EkarMapView(),
        ),
      ),
    );

    // Verify that the CustomAppBar widget is displayed
    expect(find.byType(CustomAppBar), findsOneWidget);

    // Verify that the LoaderWidget is displayed
    expect(find.byType(LoaderWidget), findsOneWidget);

    // Verify that the GoogleMap widget is not displayed
    expect(find.byType(GoogleMap), findsNothing);
  });
}
