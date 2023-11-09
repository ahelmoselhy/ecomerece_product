import 'package:ecomerece_product/core/constant/appimageasset.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/view/widgets/forums/inputs.dart';
import 'package:ecomerece_product/view/widgets/forums/mainbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//
// class SignUp extends StatelessWidget {
//   const SignUp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         color: AppColor.backgroundColor,
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Column(
//             children: [
//               headerSection(),
//               // const SizedBox(
//               //   height: 20,
//               // ),
//               Container(
//                 margin: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Column(
//                   children: [
//                     Row(
//
//                       children: [
//                         InputSection(title: "First Name", hint: "ahmed"),
//                         // const SizedBox(
//                         //   width: 20,
//                         // ),
//                         InputSection(title: "Last Name", hint: "mohamed"),
//                       ],
//                     ),
//                     // const SizedBox(
//                     //   height: 20,
//                     // ),
//                     InputSection(title: "Email", hint: "ahmed@gmail.com"),
//                     // const SizedBox(
//                     //   height: 20,
//                     // ),
//                     InputSection(title: "Password", hint: "***********"),
//                     // const SizedBox(
//                     //   height: 20,
//                     // ),
//                     InputSection(title: "Password", hint: "***********"),
//                     Container(
//                         alignment: Alignment.centerRight,
//                         margin: const EdgeInsets.only(top: 10),
//                         child: const Text(
//                           "Forget password?",
//                           style: TextStyle(color: AppColor.primary),
//                         ))
//                   ],
//                 ),
//               ),
//               // const SizedBox(
//               //   height: 30,
//               // ),
//               MainButton(buttonText: "Login"),
//               // const SizedBox(
//               //   height: 30,
//               // ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text("Don’t have an account ?",
//                       style: TextStyle(color: AppColor.grey, fontSize: 18)),
//                   // SizedBox(
//                   //   width: 8,
//                   // ),
//                   Text(
//                     "Sign up",
//                     style: TextStyle(
//                         color: AppColor.primary,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18),
//                   )
//                 ],
//               ),
//               // const SizedBox(
//               //   height: 30,
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget headerSection() => Container(
//         child: Stack(
//           alignment: Alignment.bottomLeft,
//           children: [
//             Image.asset(
//               AppImageAsset.authHeaderBackground,
//             ),
//             Container(
//               margin: const EdgeInsets.only(left: 20, bottom: 80),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: const [
//                   Text("Create Account",
//                       style: TextStyle(
//                           color: AppColor.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22)),
//                   Text("Create an account to continue",
//                       style: TextStyle(
//                           color: AppColor.white,
//                           fontWeight: FontWeight.normal,
//                           fontSize: 12)),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
// }

import 'package:ecomerece_product/controller/logincontroller.dart';
import 'package:ecomerece_product/core/constant/appimageasset.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/core/localization/translationkeys.dart';
import 'package:ecomerece_product/view/widgets/forums/inputs.dart';
import 'package:ecomerece_product/view/widgets/forums/mainbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUp extends GetView<LoginControllerImp> {
  const SignUp({super.key});

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
                        title: "First Name", hint: "Enter your first name"),
                    const SizedBox(height: 20),
                    InputSection(
                        title: "Last Name", hint: "Enter your last name"),
                    const SizedBox(
                      height: 20,
                    ),
                    InputSection(title: "Email", hint: "Enter your email"),
                    const SizedBox(
                      height: 20,
                    ),
                    InputSection(
                        title: "Password", hint: "Enter your password"),
                    const SizedBox(
                      height: 20,
                    ),
                    InputSection(
                        title: "Confirm Password", hint: "Enter your password"),
                    Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          "Forget password?",
                          style: TextStyle(color: AppColor.primary),
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
                  child: MainButton(buttonText: "Login")),
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
                  Text("Create Account",
                      style: TextStyle(
                          color: AppColor.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22)),
                  Text("Create an account to continue",
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
