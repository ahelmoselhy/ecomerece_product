import 'package:ecomerece_product/core/constant/appimageasset.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/core/constant/routes.dart';
import 'package:ecomerece_product/core/localization/localecontroller.dart';
import 'package:ecomerece_product/core/localization/translationkeys.dart';
import 'package:ecomerece_product/view/widgets/language/customlanuagebutton.dart';
import 'package:ecomerece_product/view/widgets/onboarding/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(AppImageAsset.languageScreenTopImage),
            Text(
              AppTranslation.languageScreenChooseLanguageText.tr,
              style: const TextStyle(fontSize: 16, color: AppColor.black),
            ),
            Column(
              children: [
                CustomLanguageButton(
                  textButton: AppTranslation.languageScreenArabic.tr,
                  onPressed: () {
                    controller.changeLanguage(AppTranslation.AR);
                  },
                ),
                CustomLanguageButton(
                  textButton: AppTranslation.languageScreenEnglish.tr,
                  onPressed: () {
                    controller.changeLanguage(AppTranslation.EN);
                  },
                ),
              ],
            ),
            CustomLanguageButton(
              textButton: AppTranslation.languageScreenContinue.tr,
              onPressed: () {
                Get.toNamed(AppRout.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
