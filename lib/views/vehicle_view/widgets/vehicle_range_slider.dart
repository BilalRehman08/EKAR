import 'package:ekar_project/viewmodels/vehicle_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../utils/colors.dart';

class VehicleRangeSlider extends StatelessWidget {
  final VehicleViewModel viewModel;
  const VehicleRangeSlider({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SfSlider(
        thumbIcon: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 5,
              color: AppColors.primary,
            ),
            color: AppColors.white,
          ),
        ),
        activeColor: AppColors.primary,
        inactiveColor: AppColors.white,
        min: 1,
        max: 9,
        value: viewModel.currentSliderValue,
        interval: 2,
        showTicks: false,
        showLabels: true,
        enableTooltip: true,
        minorTicksPerInterval: 0,
        onChanged: (dynamic value) {
          viewModel.currentSliderValue = value;
          viewModel.rebuildUi();
        },
      ),
    );
  }
}
