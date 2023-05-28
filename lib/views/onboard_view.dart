import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../utils/colors.dart';
import '../viewmodels/onboard_viewmodel.dart';
import '../widgets/custom_appbar.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => OnBoardViewModel(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: CustomAppBar(
                  leadingIcon: IconButton(
                onPressed: () {
                  NavigationService().back();
                },
                icon: const Icon(
                  FontAwesomeIcons.xmark,
                  color: AppColors.black,
                  size: 30,
                ),
              )),
              body: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: viewModel.key,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: const EdgeInsets.only(bottom: 30, top: 30),
                          child: const Text(
                              "Please upload clear photos of the vehicle to avoid liability of any damages caused before starting your reservation"),
                        ),
                        Container(
                          height: 350,
                          margin: const EdgeInsets.only(bottom: 30),
                          width: MediaQuery.of(context).size.width * 0.9,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: AppColors.grey, width: 1.0),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: GridView.count(
                            padding: EdgeInsets.zero,
                            crossAxisCount: 2,
                            children: List.generate(
                                4, (index) => buildGridCell(index, viewModel)),
                          ),
                        ),
                        const SizedBox(height: 50),
                        const Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Leave a comment:",
                              style: TextStyle(fontWeight: FontWeight.w900),
                            )),
                        TextFormField(
                          validator: (val) {
                            return val!.isEmpty ? 'Enter some comment' : null;
                          },
                          controller: viewModel.textFieldController,
                          decoration: const InputDecoration(
                              // labelText: 'Text Field',
                              contentPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.grey),
                              ),
                              //[focusedBorder], displayed when [TextField, InputDecorator.isFocused] is true
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.grey),
                              ),
                              hintText: "Everything looks great!"),
                        ),
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary),
                            onPressed: viewModel.handleSubmit,
                            child: const Text('Submit'),
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }

  Widget buildGridCell(int index, OnBoardViewModel viewModel) {
    return GestureDetector(
      onTap: () => viewModel.pickImage(index),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 120,
            width: 200,
            child: viewModel.images[index] != null
                ? Image.file(viewModel.images[index]!, fit: BoxFit.fill)
                : Image.asset(viewModel.gridsValues[index]['image'],
                    fit: BoxFit.fill),
          ),
          Text(
            viewModel.gridsValues[index]['label'],
            style: const TextStyle(color: AppColors.grey),
          ),
        ],
      ),
    );
  }
}
