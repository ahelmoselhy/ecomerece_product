import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  String buttonText;

  MainButton({super.key,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        height: 55,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: AppColor.primary,
        onPressed: () {},
        child: Text(
          buttonText,
          style: const TextStyle(fontWeight: FontWeight.bold, color: AppColor.white),
        ),
      ),
    );
  }
}
