import 'package:ecomerece_product/core/constant/colorapp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputSection extends StatelessWidget {

  String title;
  String hint;

  InputSection({super.key,required this.title,required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.lock_outline,
            color: AppColor.primary,
          ),
          Text(
            title,
            style: const TextStyle(color: AppColor.black, fontSize: 14),
          )
        ],
      ),
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 2,
        child: Container(
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.symmetric(
              vertical: 5, horizontal: 16),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  TextField(
            decoration: InputDecoration(
                hintText: hint,
                border: InputBorder.none),
          ),
        ),
      ),
    ],);
  }
}
