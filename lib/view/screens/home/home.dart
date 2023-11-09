import 'package:ecomerece_product/core/constant/appimageasset.dart';
import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImageAsset.profileImagesForTest,
                      height: 50, width: 50, fit: BoxFit.fill),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1, color: AppColor.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SvgPicture.asset(
                          AppImageAsset.homeScreenLocationMarker,
                          color: AppColor.primary,
                          width: 30,
                          height: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Text(
                            "Saint-Denis,France",
                            style: TextStyle(color: AppColor.black),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.keyboard_arrow_down),
                          color: AppColor.grey,
                          onPressed: () {
                            print("aaaaaaa");
                          },
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    AppImageAsset.homeScreenNotification,
                    color: AppColor.primary,
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Search For",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: AppColor.white,
                    ),
                  ),
                  Text(
                    "Your What You Want",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: AppColor.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: AppColor.primary,
                    ),
                    iconSize: 30,
                  ),
                  const TextField(decoration: InputDecoration(hintText: "Search here",hintStyle: TextStyle(color: AppColor.primary)),)
                ],
              ),
            ),

            Row(children: [
              Text("Categories",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),)
            ],)
          ],
        ),
      ),
    );
  }
}
