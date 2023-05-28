import 'package:ekar_project/helpers/list_extenions.dart';
import 'package:ekar_project/utils/colors.dart';
import 'package:ekar_project/views/vehicle_view/widgets/vehicle_about.dart';
import 'package:ekar_project/views/vehicle_view/widgets/vehicle_features.dart';
import 'package:ekar_project/views/vehicle_view/widgets/vehicle_footer.dart';
import 'package:ekar_project/views/vehicle_view/widgets/vehicle_image_slider.dart';
import 'package:ekar_project/views/vehicle_view/widgets/vehicle_range_slider.dart';
import 'package:ekar_project/widgets/custom_appbar.dart';
import 'package:ekar_project/widgets/custom_button.dart';
import 'package:ekar_project/widgets/custom_tag_text.dart';
import 'package:ekar_project/widgets/custom_textwidget.dart';
import 'package:ekar_project/widgets/loader.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked.dart';

import '../../viewmodels/vehicle_viewmodel.dart';

class VehicleView extends StatelessWidget {
  const VehicleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => VehicleViewModel(),
      onViewModelReady: (viewModel) => viewModel.onInit(),
      builder: (context, viewModel, child) => Stack(
        children: [
          Scaffold(
              appBar: CustomAppBar(
                  leadingIcon: IconButton(
                onPressed: () {
                  NavigationService().back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.black,
                ),
              )),
              body: viewModel.vehicleResponse == null
                  ? const LoaderWidget()
                  : Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  color: AppColors.primary1,
                                  child: Column(
                                    children: [
                                      VehicleImageSlider(viewModel: viewModel),
                                      const SizedBox(height: 10.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: viewModel
                                            .vehicleImagesResponse!.images!
                                            .mapFirstFive((image) {
                                          int index = viewModel
                                              .vehicleImagesResponse!.images!
                                              .indexOf(image);
                                          return Container(
                                            width: 10,
                                            height: 10,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 3),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: viewModel.currentIndex ==
                                                        index
                                                    ? 3
                                                    : 1,
                                                color: AppColors.primary,
                                              ),
                                              color: AppColors.white,
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(height: 10),
                                            Row(
                                              children: [
                                                CustomTextWidget(
                                                  "Year - ${viewModel.vehicleResponse!.attributes!.year ?? ''}",
                                                ),
                                                const Spacer(),
                                                const CustomTextWidget(
                                                  "Available colors",
                                                ),
                                                const SizedBox(width: 10),
                                                const CircleAvatar(
                                                    backgroundColor:
                                                        AppColors.black,
                                                    radius: 5),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomTextWidget(
                                                  "Base Price",
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                CustomTextWidget(
                                                  "Contact Length",
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10),
                                            const Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                CustomTextWidget(
                                                  "1353",
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CustomTextWidget(
                                                  "AED / Month",
                                                  fontSize: 15,
                                                ),
                                                Spacer(),
                                                CustomTextWidget(
                                                  "3",
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                CustomTextWidget(
                                                  "Months",
                                                  fontSize: 15,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            const CustomTextWidget(
                                              "Tenure",
                                              textAlign: TextAlign.start,
                                            ),
                                            const SizedBox(height: 5),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                CustomTextWidget(
                                                  "1 to 9 months",
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                CustomTagText(
                                                  text: "SAVINGS OF AED 1500",
                                                  fontSize: 12,
                                                  backgroundColor:
                                                      AppColors.red,
                                                  textColor: AppColors.white,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 20),
                                            VehicleRangeSlider(
                                                viewModel: viewModel),
                                            const SizedBox(height: 40),
                                            const CustomTextWidget(
                                              "BOOKING FEE",
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            const SizedBox(height: 10),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                const CustomTextWidget(
                                                  "AED",
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const CustomTextWidget(
                                                  "120",
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                const Spacer(),
                                                CustomButton(
                                                  onPressed: () {
                                                    Fluttertoast.showToast(
                                                        msg:
                                                            "How does contract work?");
                                                  },
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  buttonText:
                                                      "How contracts work?",
                                                  radius: 5,
                                                  fontSize: 14,
                                                  buttonColor: AppColors.white,
                                                  borderColor: AppColors.blue,
                                                  textColor: AppColors.blue,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        color: AppColors.white,
                                        height: 20,
                                        width: double.infinity,
                                      ),
                                      const CustomTextWidget(
                                        "About this vehicle",
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      const SizedBox(height: 10),
                                      VehicleAbout(viewModel: viewModel),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const CustomTextWidget(
                                        "Key Features",
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      VehicleFeatures(viewModel: viewModel),
                                      Container(
                                        color: AppColors.white,
                                        height: 20,
                                        width: double.infinity,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        VehicleFooter(viewModel: viewModel),
                      ],
                    )),
        ],
      ),
    );
  }
}
