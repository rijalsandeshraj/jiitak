import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/controllers/home_controller.dart';
import 'package:jiitak/screens/home_screen/widgets/search_screen.dart';

import 'widgets/custom_bottom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        body: Obx(() {
          switch (_controller.selectedScreenIndex.value) {
            case 0:
              return const SearchScreen();
            case 1:
              return const Center(child: Text('Job Screen'));
            case 2:
              return const Center(child: Text('Stamp Screen'));
            case 3:
              return const Center(child: Text('Chat Screen'));
            case 4:
              return const Center(child: Text('Profile Screen'));
            default:
              return const SearchScreen();
          }
        }),
        bottomNavigationBar: CustomBottomAppBar(),
      ),
    );
  }
}
