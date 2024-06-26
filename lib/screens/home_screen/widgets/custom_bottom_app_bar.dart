import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitak/constants/colors.dart';
import 'package:jiitak/controllers/home_controller.dart';

class CustomBottomAppBar extends StatelessWidget {
  final HomeController _controller = Get.find();

  CustomBottomAppBar({super.key});

  Widget buildTabItem(
      {required int index, String? assetPath, required String label}) {
    return Obx(() {
      final isSelected = _controller.selectedScreenIndex.value == index;
      return GestureDetector(
        onTap: () {
          _controller.changeBottomNavIndex(index);
        },
        child: Container(
          height: 60.h,
          color: transparentColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              assetPath != null
                  ? Image.asset(
                      height: 20.h,
                      assetPath,
                      color: isSelected ? orangeDarkColor : greyColor,
                    )
                  : SizedBox(height: 20.h),
              SizedBox(height: 5.h),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12.h,
                  color: isSelected ? orangeDarkColor : greyColor,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      color: whiteColor,
      child: BottomAppBar(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: buildTabItem(
                      index: 0,
                      assetPath: 'assets/images/search.png',
                      label: 'さがす'),
                ),
                Expanded(
                  child: buildTabItem(
                      index: 1,
                      assetPath: 'assets/images/bag.png',
                      label: 'お仕事'),
                ),
                Expanded(child: Container()),
                Expanded(
                  child: buildTabItem(
                      index: 3,
                      assetPath: 'assets/images/chat.png',
                      label: 'チャット'),
                ),
                Expanded(
                  child: buildTabItem(
                      index: 4,
                      assetPath: 'assets/images/profile.png',
                      label: 'マイページ'),
                ),
              ],
            ),
            Positioned(
              top: -35.h,
              child: GestureDetector(
                onTap: () {
                  _controller.changeBottomNavIndex(2);
                },
                child: Container(
                  color: transparentColor,
                  child: Column(
                    children: [
                      Container(
                        height: 65.h,
                        width: 65.w,
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              Color(0xffEDA827),
                              Color(0xffFFDA96),
                            ])),
                        child: Image.asset(
                          'assets/images/scan.png',
                          color: Colors.white,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Obx(() => Text(
                            'マイページ',
                            style: TextStyle(
                              fontSize: 12.h,
                              color: _controller.selectedScreenIndex.value == 2
                                  ? orangeDarkColor
                                  : greyColor,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
