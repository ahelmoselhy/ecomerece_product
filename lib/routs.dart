import 'package:ecomerece_product/core/constant/routes.dart';
import 'package:ecomerece_product/view/screens/auth/login.dart';
import 'package:ecomerece_product/view/screens/language/lanuage.dart';
import 'package:ecomerece_product/view/screens/onboarding/onboarding.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRout.login: (context) => const Login(),
  AppRout.onBoarding: (context) => const OnBoarding(),
  AppRout.language: (context) => const Language()
};
