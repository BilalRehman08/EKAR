import 'dart:io';

import 'package:ekar_project/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class OnBoardViewModel extends BaseViewModel {
  List<File?> images = List.generate(4, (_) => null);
  final List<Map<String, dynamic>> gridsValues = [
    {"label": "FRONT/LEFT", "image": AppImages.frontLeft},
    {"label": "FRONT/RIGHT", "image": AppImages.frontRight},
    {"label": "BACK/LEFT", "image": AppImages.backLeft},
    {"label": "BACK/RIGHT", "image": AppImages.backRight}
  ];
  TextEditingController textFieldController = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  bool showError = false;

  Future<void> pickImage(int index) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      images[index] = File(pickedImage.path);
      rebuildUi();
    }
  }

  bool areAllImagesPicked() {
    for (var image in images) {
      if (image == null) {
        return false;
      }
    }
    return true;
  }

  void handleSubmit() {
    if (areAllImagesPicked() && key.currentState!.validate()) {
      // Perform your submission logic here
      Fluttertoast.showToast(msg: 'Form submitted successfully');
    } else {
      String missingImages = '';
      for (var i = 0; i < images.length; i++) {
        if (images[i] == null) {
          missingImages += '${gridsValues[i]['label']}, ';
        }
      }
      if (missingImages != '') {
        missingImages = missingImages.substring(
            0, missingImages.length - 2); // Remove the trailing comma and space
        Fluttertoast.showToast(msg: 'Please select $missingImages images');
      } else {
        Fluttertoast.showToast(msg: 'Please leave a comment!');
      }
    }
  }
}
