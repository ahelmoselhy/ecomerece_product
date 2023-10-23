import 'package:ecomerece_product/controller/onboardingcontroller.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  int lastPage;

  CustomButton({super.key, required this.lastPage});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (currentPage) => Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: MaterialButton(
                textColor: AppColor.white,
                onPressed: () {
                  controller.next();
                },
                child:
                    Text(controller.currentPage == lastPage ? "Start" : "Next"),
              ),
            ));
  }
}
