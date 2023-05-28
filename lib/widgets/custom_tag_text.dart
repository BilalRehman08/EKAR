import 'package:ekar_project/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_textwidget.dart';

class CustomTagText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  const CustomTagText(
      {super.key,
      required this.text,
      this.textColor,
      this.backgroundColor,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primary1,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: backgroundColor ?? AppColors.primary1,
          width: 1,
        ),
      ),
      child: CustomTextWidget(text,
          fontSize: fontSize ?? 14, color: textColor ?? AppColors.black),
    );
  }
}
