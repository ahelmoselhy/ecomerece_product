import 'package:ecomerece_product/controller/logincontroller.dart';
import 'package:ecomerece_product/core/constant/appimageasset.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/core/constant/routes.dart';
import 'package:ecomerece_product/core/localization/translationkeys.dart';
import 'package:ecomerece_product/view/screens/auth/forgetpassword.dart';
import 'package:ecomerece_product/view/screens/home/home.dart';
import 'package:ecomerece_product/view/widgets/forums/inputs.dart';
import 'package:ecomerece_product/view/widgets/forums/mainbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginControllerImp> {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColor.backgroundColor,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              headerSection(),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    InputSection(
                        title: "Username", hint: "Enter your username"),
                    const SizedBox(
                      height: 20,
                    ),
                    InputSection(
                        title: "Password", hint: "Enter your password"),
                    Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(top: 10),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ForgetPassword()));
                          },
                          child: const Text(
                            "Forget password?",
                            style: TextStyle(color: AppColor.primary),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  child: MaterialButton(
                    height: 55,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: AppColor.primary,
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRout.home);
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => const Home()));
                    },
                    child: Text(
                      "Login",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: AppColor.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                AppTranslation.or.tr,
                style: const TextStyle(color: AppColor.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppImageAsset.loginScreenFacebookIcon),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: SvgPicture.asset(
                          AppImageAsset.loginScreenTwitterIcon)),
                  SvgPicture.asset(AppImageAsset.loginScreenGoogleIcon)
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account ?",
                      style: TextStyle(color: AppColor.grey, fontSize: 18)),
                  const SizedBox(
                    width: 8,
                  ),
                  MaterialButton(
                    onPressed: () {
                      controller.signUp();
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: AppColor.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerSection() => Container(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              AppImageAsset.authHeaderBackground,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("Welcome Back!",
                      style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                  Text("Sign in to your account",
                      style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      );
}
