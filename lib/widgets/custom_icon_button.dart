import 'package:ekar_project/utils/colors.dart';
import 'package:ekar_project/widgets/custom_textwidget.dart';
import 'package:flutter/material.dart';

class CustomIconBut extends StatelessWidget {
  final String? label;
  final IconData? icon;
  const CustomIconBut({super.key, this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      decoration: BoxDecoration(
        color: AppColors.primary1,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Icon(
            icon,
            size: 50,
          ),
          const SizedBox(height: 10),
          CustomTextWidget(label!, fontSize: 14),
        ],
      ),
    );
  }
}
