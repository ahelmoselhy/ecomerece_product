import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:ecomerece_product/data/datasource/static/static.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: onBoardingPager(),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Row(
                    children: [
                      ...List.generate(
                        onBoardinglist.length,
                        (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(microseconds: 900),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      )),
    );
  }

  Widget onBoardingPager() => PageView.builder(
      itemCount: onBoardinglist.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              onBoardinglist[index].image!,
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 50),
            Text(
              onBoardinglist[index].title!,
              style: const TextStyle(
                  color: AppColor.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardinglist[index].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: AppColor.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        );
      });
}
