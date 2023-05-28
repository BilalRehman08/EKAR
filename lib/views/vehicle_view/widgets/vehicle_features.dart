import 'package:flutter/material.dart';

import '../../../viewmodels/vehicle_viewmodel.dart';
import '../../../widgets/custom_tag_text.dart';

class VehicleFeatures extends StatelessWidget {
  final VehicleViewModel viewModel;
  const VehicleFeatures({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        CustomTagText(text: viewModel.vehicleResponse!.attributes!.drivetrain!),
        const SizedBox(width: 10),
        CustomTagText(text: viewModel.vehicleResponse!.attributes!.style!),
        const SizedBox(width: 10),
        CustomTagText(text: viewModel.vehicleResponse!.attributes!.engine!),
        const SizedBox(width: 10),
        CustomTagText(
            text: viewModel.vehicleResponse!.attributes!.transmissionShort!),
        const SizedBox(width: 10),
        CustomTagText(
            text: viewModel.vehicleResponse!.attributes!.transmission!),
      ],
    );
  }
}
