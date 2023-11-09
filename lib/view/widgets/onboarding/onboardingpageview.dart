import 'package:ecomerece_product/controller/onboardingcontroller.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPageView extends GetView<OnBoardingControllerImp> {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
        onPageChanged: (index) {
          controller.onPageChanged(index);
        },
        itemCount: onBoardinglist.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                onBoardinglist[index].image!,
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 50),
              Text(
                onBoardinglist[index].title!,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardinglist[index].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ],
          );
        });
  }
}
