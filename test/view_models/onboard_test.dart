import 'dart:io';
import 'package:ekar_project/viewmodels/onboard_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late OnBoardViewModel viewModel;

  setUp(() {
    viewModel = OnBoardViewModel();
  });

  group('OnBoardViewModel', () {
    test('areAllImagesPicked should return true if all images are selected',
        () {
      viewModel.images = List.generate(4, (_) => File('path/to/image.jpg'));

      final result = viewModel.areAllImagesPicked();

      expect(result, isTrue);
    });

    test('areAllImagesPicked should return false if any image is not selected',
        () {
      viewModel.images = List.generate(
          4, (index) => index == 0 ? null : File('path/to/image.jpg'));

      final result = viewModel.areAllImagesPicked();

      expect(result, isFalse);
    });
  });
}
