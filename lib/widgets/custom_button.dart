import 'package:ekar_project/utils/colors.dart';
import 'package:flutter/material.dart';
import 'custom_textwidget.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? radius;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;

  const CustomButton(
      {super.key,
      this.onPressed,
      this.padding,
      this.radius,
      this.fontSize,
      this.fontWeight,
      this.buttonText,
      this.buttonColor,
      this.borderColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? AppColors.primary, width: 1),
          borderRadius: BorderRadius.circular(
            radius ?? 10,
          ),
        ),
      ),
      child: CustomTextWidget(
        buttonText ?? "",
        fontSize: fontSize ?? 17,
        fontWeight: fontWeight,
        color: textColor,
      ),
    );
  }
}
