import 'package:flutter/material.dart';

import '../../../viewmodels/vehicle_viewmodel.dart';
import '../../../widgets/custom_icon_button.dart';

class VehicleAbout extends StatelessWidget {
  final VehicleViewModel viewModel;
  const VehicleAbout({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomIconBut(
            icon: Icons.airline_seat_individual_suite_sharp,
            label:
                "${viewModel.vehicleResponse!.attributes!.standardSeating ?? ''} Seats",
          ),
          const SizedBox(
            width: 10,
          ),
          CustomIconBut(
            icon: Icons.category,
            label: viewModel.vehicleResponse!.attributes!.transmissionType == ""
                ? 'Manual'
                : viewModel.vehicleResponse!.attributes!.transmissionType,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomIconBut(
            icon: Icons.oil_barrel,
            label: viewModel.vehicleResponse!.attributes!.fuelType == ""
                ? 'Patrol'
                : viewModel.vehicleResponse!.attributes!.transmissionType,
          ),
        ],
      ),
    );
  }
}
