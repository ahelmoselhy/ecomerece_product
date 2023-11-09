import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/core/localization/localecontroller.dart';
import 'package:ecomerece_product/core/localization/translation.dart';
import 'package:ecomerece_product/core/services/myservices.dart';
import 'package:ecomerece_product/routs.dart';
import 'package:ecomerece_product/view/screens/home/home.dart';
import 'package:ecomerece_product/view/screens/language/lanuage.dart';
import 'package:ecomerece_product/view/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController localeController = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: localeController.language,
      translations: MyTranslation(),
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.pink,
          textTheme: const TextTheme(
              headline1: TextStyle(
                  color: AppColor.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
              bodyText1: TextStyle(
                  color: AppColor.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.normal))),
      home: const SafeArea(child: Home()),
      routes: routes,
    );
  }
}
