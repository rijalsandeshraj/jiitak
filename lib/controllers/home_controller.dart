import 'package:get/get.dart';

import '../models/job_post.dart';

class HomeController extends GetxController {
  RxInt selectedScreenIndex = 0.obs;
  RxInt selectedDayIndex = 0.obs;
  RxList<JobPost> jobPosts = [
    JobPost(image: "assets/images/job_post1.png", isFavorite: RxBool(false)),
    JobPost(image: "assets/images/job_post2.png", isFavorite: RxBool(false)),
    JobPost(image: "assets/images/job_post1.png", isFavorite: RxBool(false)),
    JobPost(image: "assets/images/job_post2.png", isFavorite: RxBool(false)),
    JobPost(image: "assets/images/job_post1.png", isFavorite: RxBool(false)),
  ].obs;

  void selectDay(int index) {
    selectedDayIndex.value = index;
  }

  void changeBottomNavIndex(int index) {
    selectedScreenIndex.value = index;
  }
}
