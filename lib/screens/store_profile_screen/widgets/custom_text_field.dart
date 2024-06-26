import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;

  const CustomTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 20),
      child: SizedBox(
        child: TextField(
          textAlign: TextAlign.left,
          controller: controller,
          style: TextStyle(
              color: const Color(0xff454545),
              fontSize: 16.h,
              fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 10, bottom: 10),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Color(0xffE8E8E8))),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Color(0xffE8E8E8))),
          ),
        ),
      ),
    );
  }
}
