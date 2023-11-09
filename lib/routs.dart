import 'package:ecomerece_product/core/constant/routes.dart';
import 'package:ecomerece_product/view/screens/auth/forgetpassword.dart';
import 'package:ecomerece_product/view/screens/auth/forgetpasswordOtp.dart';
import 'package:ecomerece_product/view/screens/auth/login.dart';
import 'package:ecomerece_product/view/screens/auth/signup.dart';
import 'package:ecomerece_product/view/screens/home/home.dart';
import 'package:ecomerece_product/view/screens/language/lanuage.dart';
import 'package:ecomerece_product/view/screens/onboarding/onboarding.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRout.login: (context) => const Login(),
  AppRout.signUp: (context) => const SignUp(),
  AppRout.onBoarding: (context) => const OnBoarding(),
  AppRout.language: (context) => const Language(),
  AppRout.forgetPassword: (context) => const ForgetPassword(),
  AppRout.forgetPasswordOtp: (context) => const ForgetPasswordOtp(),
  AppRout.home: (context) => const Home()
};
