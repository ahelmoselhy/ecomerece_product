import 'package:ecomerece_product/core/constant/routes.dart';
import 'package:ecomerece_product/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  signUp();
  forgetPassword();
}

class LoginControllerImp extends LoginController {

  @override
  void onInit() {
    super.onInit();
  }

  @override
  forgetPassword() {
  }

  @override
  login() {
  }

  @override
  signUp() {
    Get.offAllNamed(AppRout.signUp);
  }
}
