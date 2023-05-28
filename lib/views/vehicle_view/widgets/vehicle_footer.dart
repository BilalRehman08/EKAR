import 'package:ekar_project/utils/colors.dart';
import 'package:ekar_project/viewmodels/vehicle_viewmodel.dart';
import 'package:ekar_project/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_textwidget.dart';

class VehicleFooter extends StatelessWidget {
  final VehicleViewModel viewModel;
  const VehicleFooter({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.grey50opacity,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                  radius: 25,
                  // backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(
                    viewModel.vehicleImagesResponse!.images![0].link!,
                  )),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    viewModel.vehicleResponse!.attributes!.model!,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 5),
                  CustomTextWidget(
                    viewModel.vehicleResponse!.attributes!.make!,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: CustomButton(
              buttonColor: AppColors.primary,
              onPressed: () {
                viewModel.navigateToOnBoardView();
              },
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              buttonText: "Proceed with your selection",
              radius: 5,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
