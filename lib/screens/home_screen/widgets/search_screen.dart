import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jiitak/constants/colors.dart';
import 'package:jiitak/constants/constants.dart';
import 'package:jiitak/constants/text_styles.dart';
import 'package:jiitak/utils/show_custom_snack_bar.dart';

import '../../../controllers/home_controller.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Scaffold(
      backgroundColor: primaryColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            primary: true,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            scrolledUnderElevation: 0,
            automaticallyImplyLeading: false,
            stretch: true,
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: '北海道, 札幌市',
                        hintStyle: TextStyle(
                          color: Color(0xff303030),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        enabled: true,
                        fillColor: Color(0xffF7F7F7),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 11, horizontal: 13),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.h),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/filter.png',
                      fit: BoxFit.contain,
                      height: 24.h,
                      width: 24.h,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Color(0xffEE5F40),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50.h),
              child: Container(
                height: 33.h,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      orangeDarkColor,
                      orangeLightColor,
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    '2022年 5月 26日（木）',
                    style: TextStyle(
                      color: const Color(0xff303030),
                      fontSize: 14.h,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: <Widget>[
              SizedBox(height: 24.5.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Obx(() => Row(
                      children: [
                        ...List.generate(
                          days.length,
                          (index) {
                            return GestureDetector(
                              onTap: () {
                                controller.selectDay(index);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                margin: EdgeInsets.only(left: 6.w),
                                decoration: BoxDecoration(
                                  color:
                                      controller.selectedDayIndex.value == index
                                          ? orangeDarkColor
                                          : transparentColor,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      days[index].name,
                                      style: daysSliderTextStyle.copyWith(
                                          color: controller
                                                      .selectedDayIndex.value ==
                                                  index
                                              ? whiteColor
                                              : blackColor),
                                    ),
                                    Text(
                                      days[index].date,
                                      style: daysSliderTextStyle.copyWith(
                                          color: controller
                                                      .selectedDayIndex.value ==
                                                  index
                                              ? whiteColor
                                              : blackColor),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 24.5.h),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Obx(
                    () => Column(
                      children: [
                        ...List.generate(
                          controller.jobPosts.length,
                          (index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 16.5.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: whiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(1, 1),
                                        color: greyColor.withOpacity(0.1),
                                        blurRadius: 2,
                                        spreadRadius: 1),
                                    BoxShadow(
                                        offset: const Offset(-1, 0),
                                        color: greyColor.withOpacity(0.1),
                                        blurRadius: 2,
                                        spreadRadius: 1)
                                  ]),
                              child: Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    clipBehavior: Clip.none,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Image.asset(
                                          controller.jobPosts[index].image,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 7,
                                        left: -7,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            color: const Color(0xffFF6262),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              '本日まで',
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 19),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 16),
                                          child: Text(
                                            '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                            style: TextStyle(
                                              color: Color(0xff303030),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 3,
                                                      horizontal: 5),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: const Color(0xffEEAB40)
                                                    .withOpacity(0.10),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '介護付き有料老人ホーム',
                                                  style: TextStyle(
                                                    color: Color(0xffFAAA14),
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              '¥ 6,000',
                                              style: TextStyle(
                                                color: Color(0xff303030),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 15.h),
                                        const Text(
                                          '5月 31日（水）08 : 00 ~ 17 : 00',
                                          style: TextStyle(
                                            color: Color(0xff303030),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        const Text(
                                          '北海道札幌市東雲町3丁目916番地17号',
                                          style: TextStyle(
                                            color: Color(0xff303030),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        const Text(
                                          '交通費 300円',
                                          style: TextStyle(
                                            color: Color(0xff303030),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '住宅型有料老人ホームひまわり倶楽部',
                                              style: TextStyle(
                                                color: const Color(0xff303030)
                                                    .withOpacity(0.35),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(height: 10.h),
                                            Obx(() => controller.jobPosts[index]
                                                    .isFavorite.value
                                                ? IconButton(
                                                    icon: const Icon(
                                                        Icons.favorite_rounded),
                                                    onPressed: () {
                                                      controller
                                                          .jobPosts[index]
                                                          .isFavorite
                                                          .value = false;
                                                      showCustomSnackBar(
                                                          'Job post removed from Favorites',
                                                          taskSuccess: false);
                                                    },
                                                    color: redColor,
                                                  )
                                                : IconButton(
                                                    icon: const Icon(Icons
                                                        .favorite_border_outlined),
                                                    onPressed: () {
                                                      controller
                                                          .jobPosts[index]
                                                          .isFavorite
                                                          .value = true;
                                                      showCustomSnackBar(
                                                        'Job post added to Favorites',
                                                      );
                                                    },
                                                    color:
                                                        const Color(0xff303030)
                                                            .withOpacity(0.15),
                                                  )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 60.h),
                      ],
                    ),
                  )),
            ],
          ))
        ],
      ),
      floatingActionButton: const CircleAvatar(
        radius: 25,
        backgroundColor: Color(0xffffffff),
        child: Icon(
          Icons.location_on_outlined,
          color: Color(0xff303030),
        ),
      ),
    );
  }
}
