import 'package:ecomerece_product/core/localization/translationkeys.dart';
import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          AppTranslation.languageScreenChooseLanguageText: "اختر لغتك المفضلة",
          AppTranslation.languageScreenArabic: "العربية",
          AppTranslation.languageScreenEnglish: "الانجليزية",
          AppTranslation.languageScreenContinue: "تابع"
        },
        "en": {
          AppTranslation.languageScreenChooseLanguageText: "Choose Your Preferred Language",
          AppTranslation.languageScreenArabic: "Arabic",
          AppTranslation.languageScreenEnglish: "English",
          AppTranslation.languageScreenContinue: "Continue"
        }
      };
}
