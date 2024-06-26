import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiitak/constants/colors.dart';
import 'package:jiitak/screens/store_profile_screen.dart';
import 'package:jiitak/utils/navigator.dart';
import 'package:jiitak/widgets/button_widget.dart';

import 'home_screen/home_screen.dart';
import 'stamp_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'JIITAK UI TEST',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: orangeDarkColor,
                  ),
                ),
                SizedBox(height: 30.h),
                ButtonWidget(
                  title: 'Home Screen',
                  onPressed: () {
                    navigateTo(HomeScreen());
                  },
                ),
                SizedBox(height: 20.h),
                ButtonWidget(
                  title: 'Stamp Screen',
                  onPressed: () {
                    navigateTo(const StampScreen());
                  },
                ),
                SizedBox(height: 20.h),
                ButtonWidget(
                  onPressed: () {
                    navigateTo(const StoreProfileScreen());
                  },
                  title: 'Store Profile Screen',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
