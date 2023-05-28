import 'package:ekar_project/viewmodels/map_viewmodel.dart';
import 'package:ekar_project/widgets/custom_appbar.dart';
import 'package:ekar_project/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:stacked/stacked.dart';

class EkarMapView extends StatelessWidget {
  const EkarMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => EkarMapViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.onInit();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
            appBar: const CustomAppBar(),
            body: (viewModel.currentPosition == null)
                ? const LoaderWidget()
                : GoogleMap(
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        viewModel.currentPosition!.latitude,
                        viewModel.currentPosition!.longitude,
                      ),
                      zoom: 15,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      viewModel.controller.complete(controller);
                    },
                    markers: viewModel.markers,
                  ));
      },
    );
  }
}
