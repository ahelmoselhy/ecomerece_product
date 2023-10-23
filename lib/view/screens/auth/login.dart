import 'package:ecomerece_product/core/constant/appimageasset.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColor.backgroundColor,
          child: Column(
            children: [
              headerSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget headerSection() => Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(AppImageAsset.onBoardingImageThree),
        const Text("Welcome Back!",
            style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 22)),
        const Text("Sign in to your account",
            style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.normal,
                fontSize: 12)),
      ],
    ),
  );
}
