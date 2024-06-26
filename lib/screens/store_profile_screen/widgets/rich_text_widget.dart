import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String text;
  final String? text2;
  final TextStyle? style;

  const RichTextWidget({super.key, required this.text, this.style, this.text2});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(
          text: "店舗名",
          style: TextStyle(fontSize: 14, color: Color(0xff4B4948))),
      const TextSpan(text: "*", style: TextStyle(color: Colors.red)),
      TextSpan(
          text: text2,
          style: const TextStyle(color: Color(0xff9C9896), fontSize: 14)),
    ]));
  }
}
