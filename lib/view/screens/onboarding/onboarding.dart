import 'package:dartz/dartz.dart';
import 'package:ecomerece_product/controller/onboardingcontroller.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/data/datasource/static/static.dart';
import 'package:ecomerece_product/view/widgets/onboarding/custombutton.dart';
import 'package:ecomerece_product/view/widgets/onboarding/onboardingdotindicator.dart';
import 'package:ecomerece_product/view/widgets/onboarding/onboardingpageview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: OnBoardingPageView(),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [OnBoardingDotsIndicators()],
                )),
            CustomButton(lastPage: onBoardinglist.length - 1),
          ],
        ),
      ),
    );
  }
}
