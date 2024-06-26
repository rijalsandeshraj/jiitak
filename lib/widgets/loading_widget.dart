import 'package:flutter/material.dart';
import 'package:jiitak/constants/text_styles.dart';
import 'package:lottie/lottie.dart';

import '../constants/colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: secondaryColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Loading...',
              style: homeCardtitleTextStyle.copyWith(color: primaryColor)),
          Lottie.asset('assets/animations/loader.json', height: 70),
        ],
      ),
    );
  }
}
