import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:flutter/material.dart';

class CustomLanguageButton extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;

  const CustomLanguageButton(
      {super.key, required this.textButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primary,
        onPressed: () {
          onPressed!();
        },
        child: Text(
          textButton,
          style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.white),
        ),
      ),
    );
  }
}
