import 'dart:ui';

import 'package:ecomerece_product/core/services/myservices.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  changeLanguage(String languageCode) {
    Locale locale = Locale(languageCode);
    myServices.sharedPreferences.setString("languageCode", languageCode);
    Get.updateLocale(locale);
  }
  @override
  void onInit() {
    String? sharedPrefLanguage = myServices.sharedPreferences.getString("languageCode");
    if(sharedPrefLanguage == "ar"){
      language = const Locale("ar");
    }else if(sharedPrefLanguage == "en"){
      language = const Locale("en");
    }else{
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
