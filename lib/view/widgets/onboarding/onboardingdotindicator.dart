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
                    width: index == controller.currentPage ? 12 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: index == controller.currentPage
                          ? AppColor.dotsActiveColor
                          : AppColor.dotsUnActiveColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
              // (index) => index == controller.currentPage
              //     ? Container(
              //         alignment: Alignment.center,
              //         padding: EdgeInsets.all(2),
              //         decoration: BoxDecoration(
              //           color: AppColor.backgroundColor,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //         child: AnimatedContainer(
              //           duration: const Duration(microseconds: 900),
              //           width: 8,
              //           height: 8,
              //           decoration: BoxDecoration(
              //             color: AppColor.dotsActiveColor,
              //             borderRadius: BorderRadius.circular(10),
              //           ),
              //         ),
              //       )
              //     : AnimatedContainer(
              //         margin: const EdgeInsets.only(right: 5),
              //         duration: const Duration(microseconds: 900),
              //         width: 8,
              //         height: 8,
              //         decoration: BoxDecoration(
              //           color: AppColor.dotsUnActiveColor,
              //           borderRadius: BorderRadius.circular(10),
              //         ),
              //       ),
              )
        ],
      ),
    );
  }
}
