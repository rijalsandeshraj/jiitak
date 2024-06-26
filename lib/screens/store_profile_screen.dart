// import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/check_model.dart';
import 'store_profile_screen/widgets/custom_text_field.dart';
import 'store_profile_screen/widgets/rich_text_widget.dart';

// import '../data/checkcontroller.dart';
// import '../widgets/responsive.dart';
// import '../widgets/rich_text.dart';
// import '../widgets/texts.dart';

List<CheckModel> checklist = [
  CheckModel(txt: '月', value: false),
  CheckModel(txt: '火', value: false),
  CheckModel(txt: '水', value: false),
  CheckModel(txt: '木', value: false),
  CheckModel(txt: '金', value: false),
  CheckModel(txt: '土', value: true),
  CheckModel(txt: '日', value: true),
  CheckModel(txt: '祝', value: true),
];

List<String> img3 = [
  'assets/images/Input3.png',
  'assets/images/Input4.png',
  'assets/images/Input5.5.png',
];

List<String> img4 = [
  'assets/images/input6.png',
  'assets/images/inpu7.png',
  'assets/images/input8.png',
];
List<String> img5 = [
  'assets/images/ice1.png',
  'assets/images/ice2.png',
  'assets/images/ice3.png',
];
const List<String> list = <String>[
  '10 : 00',
  '20 : 00',
  '11 : 00',
  '15 : 00',
  '25 : 00',
];

dynamic drobdownvalue = list.first;
dynamic drobdownvalue2 = list[1];
dynamic drobdownvalue3 = list[2];
dynamic drobdownvalue4 = list[3];
dynamic bool = false;

class StoreProfileScreen extends StatefulWidget {
  const StoreProfileScreen({super.key});

  @override
  State<StoreProfileScreen> createState() => _StoreProfileScreenState();
}

class _StoreProfileScreenState extends State<StoreProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor:
                            const Color(0xff8C817B).withOpacity(0.1),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20,
                              color: Color(0xffB8B8B8),
                            )),
                      ),
                      const Text(
                        '店舗プロフィール編集',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      const Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Icon(
                            Icons.notifications_outlined,
                            size: 30,
                          ),
                          Positioned(
                            right: -2,
                            top: 3,
                            child: CircleAvatar(
                              radius: 9,
                              backgroundColor: Color(0xffEE7D42),
                              child: Center(
                                child: Text(
                                  '99+',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RichTextWidget(
                          text: '店舗名',
                        ),
                        CustomTextField(
                          controller: TextEditingController(text: 'Mer キッチン'),
                        ),
                        const RichTextWidget(text: '代表担当者名'),
                        CustomTextField(
                          controller: TextEditingController(text: '林田　絵梨花'),
                        ),
                        const RichTextWidget(text: '店舗電話番号'),
                        CustomTextField(
                          controller:
                              TextEditingController(text: '123 - 4567 8910'),
                        ),
                        const RichTextWidget(text: '店舗住所'),
                        CustomTextField(
                          controller:
                              TextEditingController(text: '大分県豊後高田市払田791-13'),
                        ),
                        Ink(
                          width: 350,
                          height: 220,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(
                            'assets/images/snazzy-image (1) 1.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const RichTextWidget(
                          text: '店舗外観',
                          text2: '（最大3枚まで）',
                        ),
                        SizedBox(
                          height: 110.h,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/Input1.png',
                                height: 91.h,
                                width: 91.h,
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                'assets/images/Input1.png',
                                height: 91.h,
                                width: 91.h,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 91.h,
                                height: 91.h,
                                child: DottedBorder(
                                  borderPadding: const EdgeInsets.all(5),
                                  color: const Color(0xffE8E8E8),
                                  strokeWidth: 2,
                                  dashPattern: const [4, 4],
                                  child: Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Image.asset(
                                              'assets/images/gallery.png',
                                              width: 30.h,
                                              height: 30.h,
                                              color: const Color(0xff9C9896),
                                            )),
                                        SizedBox(
                                          height: 20.h,
                                          child: Text(
                                            '写真を追加',
                                            style: TextStyle(
                                              color: const Color(0xff9C9896),
                                              fontSize: 12.h,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const RichTextWidget(
                          text: '店舗内観',
                          text2: '（1枚〜3枚ずつ追加してください）',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                          child: SizedBox(
                            height: 91.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.only(right: 9),
                                child: Image.asset(
                                  'assets/images/Input2.png',
                                  height: 91.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const RichTextWidget(
                          text: '料理写真',
                          text2: '（1枚〜3枚ずつ追加してください）',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                          child: SizedBox(
                            height: 91.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) => Image.asset(
                                img3[index],
                                height: 91.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        const RichTextWidget(
                          text: 'メニュー写真',
                          text2: '（1枚〜3枚ずつ追加してください）',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                          child: SizedBox(
                            height: 91.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) => Image.asset(
                                img4[index],
                                height: 91.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        const RichTextWidget(text: '営業時間'),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Row(
                            children: [
                              Container(
                                width: 124,
                                height: 38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: const EdgeInsets.all(5),
                                    icon: const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: 25,
                                      ),
                                    ),
                                    value: drobdownvalue,
                                    style: const TextStyle(
                                        color: Color(0xff454545), fontSize: 16),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '~',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff4B4948),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                width: 124,
                                height: 38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      5,
                                    ),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: const EdgeInsets.all(
                                      5,
                                    ),
                                    icon: const Padding(
                                      padding: EdgeInsets.only(
                                        left: 30,
                                      ),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: 25,
                                      ),
                                    ),
                                    value: drobdownvalue2,
                                    style: const TextStyle(
                                      color: Color(0xff454545),
                                      fontSize: 16,
                                    ),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        const RichTextWidget(text: 'ランチ時間'),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                          child: Row(
                            children: [
                              Container(
                                width: 124,
                                height: 38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: const EdgeInsets.all(5),
                                    icon: const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: 25,
                                      ),
                                    ),
                                    value: drobdownvalue3,
                                    style: const TextStyle(
                                        color: Color(0xff454545), fontSize: 16),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '~',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff4B4948),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                width: 124,
                                height: 38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: DropdownButton(
                                    underline: const SizedBox(),
                                    padding: const EdgeInsets.all(5),
                                    icon: const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: Color(0xffC7C4C0),
                                        size: 25,
                                      ),
                                    ),
                                    value: drobdownvalue4,
                                    style: const TextStyle(
                                        color: Color(0xff454545), fontSize: 16),
                                    items: list.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (value) {
                                      setState(() {
                                        drobdownvalue = value;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ),
                        const RichTextWidget(text: '定休日'),
                        SizedBox(
                          width: 300,
                          height: 150,
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(5),
                            itemCount: checklist.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: Checkbox(
                                      activeColor: const Color(0xffEE7D42),
                                      value: checklist[index].value,
                                      onChanged: (value) {
                                        setState(() {
                                          checklist[index].value = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                    height: 20,
                                    child: Center(
                                      child: Text(
                                        checklist[index].txt!,
                                        style: const TextStyle(
                                            color: Color(0xff4B4948)),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                        const RichTextWidget(text: '料理カテゴリー'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            width: 194,
                            height: 38.h,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border:
                                    Border.all(color: const Color(0xffE8E8E8))),
                            child: const Row(
                              children: [
                                Text(
                                  '料理カテゴリー選択',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xffC7C4C0)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Color(0xffC7C4C0),
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                        ),
                        const RichTextWidget(text: '予算'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            children: [
                              Container(
                                width: 124,
                                height: 38.h,
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: const Text(
                                  '¥ 1,000',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff454545)),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  '~',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff4B4948),
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Container(
                                width: 124,
                                height: 38.h,
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: const Color(0xffE8E8E8))),
                                child: const Text(
                                  '¥ 2,000',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff454545)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const RichTextWidget(text: 'キャッチコピー'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                              width: double.infinity,
                              height: 38.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color(0xffE8E8E8))),
                              child: const Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  '美味しい！リーズナブルなオムライスランチ！',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff454545)),
                                ),
                              )),
                        ),
                        const RichTextWidget(text: '座席数'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                              width: double.infinity,
                              height: 38.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color(0xffE8E8E8))),
                              child: const Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  '40席',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff454545)),
                                ),
                              )),
                        ),
                        const RichTextWidget(text: '喫煙席'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Image.asset('assets/images/check.png'),
                              const Text(
                                '有',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff4B4948)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 5),
                                child: Image.asset('assets/images/wrong.png'),
                              ),
                              const Text(
                                '無',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff4B4948)),
                              ),
                            ],
                          ),
                        ),
                        const RichTextWidget(text: '駐車場'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Image.asset('assets/images/check.png'),
                              const Text(
                                '有',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff4B4948)),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, right: 5),
                                child: Image.asset('assets/images/wrong.png'),
                              ),
                              const Text(
                                '無',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff4B4948)),
                              ),
                            ],
                          ),
                        ),
                        const RichTextWidget(text: '来店プレゼント'),
                        Row(
                          children: [
                            SizedBox(
                                width: 20,
                                child: Image.asset('assets/images/check.png')),
                            const SizedBox(
                              width: 160,
                              height: 30,
                              child: Text(
                                '有（最大３枚まで）',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff4B4948)),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50, right: 5),
                              child: Image.asset(
                                'assets/images/wrong.png',
                                width: 20,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                              height: 30,
                              child: Text(
                                '無',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff4B4948)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: SizedBox(
                            height: 110.h,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) => Stack(
                                children: [
                                  Image.asset(
                                    img5[index],
                                    fit: BoxFit.fill,
                                  ),
                                  Positioned(
                                      right: 20,
                                      top: 15,
                                      child: Image.asset(
                                          'assets/images/cross.png'))
                                ],
                              ),
                            ),
                          ),
                        ),
                        const RichTextWidget(text: '来店プレゼント名'),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 40),
                          child: Container(
                              width: double.infinity,
                              height: 38.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: const Color(0xffE8E8E8))),
                              child: const Padding(
                                padding: EdgeInsets.all(3),
                                child: Text(
                                  'いちごクリームアイスクリーム, ジュース',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff454545)),
                                ),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: 46.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffEE7D42),
                                      Color(0xffFFC8AB),
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    stops: [0, 1])),
                            child: Center(
                                child: Text(
                              '編集を保存',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.h),
                            )),
                          ),
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
