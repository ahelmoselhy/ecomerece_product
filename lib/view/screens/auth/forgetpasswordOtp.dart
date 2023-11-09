import 'package:ecomerece_product/controller/logincontroller.dart';
import 'package:ecomerece_product/core/constant/appimageasset.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/core/localization/translationkeys.dart';
import 'package:ecomerece_product/view/widgets/forums/inputs.dart';
import 'package:ecomerece_product/view/widgets/forums/mainbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class ForgetPasswordOtp extends GetView<LoginControllerImp> {
  const ForgetPasswordOtp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: AppColor.backgroundColor,
      //   title: Container(
      //       alignment: Alignment.center,
      //       child: const Text(
      //         "OTP",
      //         style: TextStyle(color: AppColor.black),
      //       )),
      //   leading: IconButton(
      //     icon: const Icon(
      //       Icons.arrow_back,
      //       color: AppColor.black,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: double.infinity,
        color: AppColor.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 1,),
            const Text(
              "Please enter your email to recover\nyour password",
              textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18,color: AppColor.grey),
            ),
            const Spacer(flex: 1,),
            OTPTextField(
              length: 5,
              // width: MediaQuery.of(context).size.width,
              width: double.infinity,
              fieldWidth: 40,

              style: const TextStyle(
                  fontSize: 17
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: $pin");
              },
            ),
            const Spacer(flex: 2,),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: MainButton(buttonText: "Continue")),
            const Spacer(flex: 3,),
          ],
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
