import 'package:ecomerece_product/core/localization/translationkeys.dart';
import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          AppTranslation.questionSign: "؟",
          AppTranslation.languageScreenChooseLanguageText: "اختر لغتك المفضلة",
          AppTranslation.languageScreenArabic: "العربية",
          AppTranslation.languageScreenEnglish: "الانجليزية",
          AppTranslation.languageScreenContinue: "تابع",
          //login
          AppTranslation.welcomeBack: "مرحبا بعودتك",
          AppTranslation.or: "أو",
          AppTranslation.doNotHaveAccount: "لا تمتلك حساب",
          AppTranslation.enterYourPassword: "ادخل كلمة المرور",
          AppTranslation.enterYourUserName: "ادخل اسم المستخدم",
          AppTranslation.forgetPassword: "نسيت كلمة المرور",
          AppTranslation.signUp: "تسجيل",
          AppTranslation.password: "كلمة المرور",
          AppTranslation.username: "اسم المستخدم",
        },
        "en": {
          AppTranslation.languageScreenChooseLanguageText: "Choose Your Preferred Language",
          AppTranslation.languageScreenArabic: "Arabic",
          AppTranslation.languageScreenEnglish: "English",
          AppTranslation.languageScreenContinue: "Continue",
          AppTranslation.doNotHaveAccount: "Don't have account",
        }
      };
}
