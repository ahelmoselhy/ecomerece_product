import 'package:ecomerece_product/controller/onboardingcontroller.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class OnBoardingDotsIndicators extends StatelessWidget {
  const OnBoardingDotsIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Row(
        children: [
          ...List.generate(
            onBoardinglist.length,
            (index) => AnimatedContainer(
              margin: const EdgeInsets.only(right: 5),
              duration: const Duration(microseconds: 900),
              width: index == controller.currentPage ? 16 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: index == controller.currentPage
                    ? AppColor.dotsActiveColor
                    : AppColor.dotsUnActiveColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
