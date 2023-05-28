import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ekar_project/helpers/list_extenions.dart';
import 'package:ekar_project/utils/colors.dart';
import 'package:ekar_project/utils/images.dart';
import 'package:ekar_project/viewmodels/vehicle_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VehicleImageSlider extends StatelessWidget {
  final VehicleViewModel viewModel;
  const VehicleImageSlider({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          viewModel.currentIndex = index;
          viewModel.rebuildUi();
        },
      ),
      items: viewModel.vehicleImagesResponse!.images!.mapFirstFive((i) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                  imageUrl: i.link!,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Shimmer.fromColors(
                    baseColor: AppColors.grey50opacity,
                    highlightColor: AppColors.grey,
                    child: Container(
                      color: AppColors.white,
                    ),
                  ),
                  errorWidget: (context, url, error) =>
                      Image.asset(AppImages.noImage, fit: BoxFit.cover),
                ));
          },
        );
      }).toList(),
    );
  }
}
