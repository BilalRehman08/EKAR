import 'package:ekar_project/views/onboard_view.dart';
import 'package:ekar_project/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  
  testWidgets('OnBoardView widget should show the expected widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: OnBoardView(),
        ),
      ),
    );

    // Verify that the CustomAppBar widget is displayed
    expect(find.byType(CustomAppBar), findsOneWidget);

    // Verify that the GridView is displayed
    expect(find.byType(GridView), findsOneWidget);

    // Verify that the TextFormField is displayed
    expect(find.byType(TextFormField), findsOneWidget);

    // Verify that the ElevatedButton is displayed
    expect(find.byType(ElevatedButton), findsOneWidget);

    // Verify that the Text widgets are displayed
    expect(
        find.text(
            "Please upload clear photos of the vehicle to avoid liability of any damages caused before starting your reservation"),
        findsOneWidget);
    expect(find.text("Leave a comment:"), findsOneWidget);
    expect(find.text("Submit"), findsOneWidget);

    // Verify that the Icon widget is displayed
    expect(find.byIcon(FontAwesomeIcons.xmark), findsOneWidget);
  });
}
