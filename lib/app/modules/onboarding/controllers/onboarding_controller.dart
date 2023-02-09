import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearpays/app/routes/app_pages.dart';

import '../models/onboarding_info.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  forwardAction() {
    if (isLastPage) {
      Get.toNamed("/category");
      //go to home page
    } else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        'assets/image 22.png',
        'Virtual POS',
        'Flexible on-the-go payment for your \nbusiness. Think about business growth \nand innovation, think Nearpays.',
        'On-the-go'),
    OnboardingInfo(
        'assets/Frame 427319057.png',
        'Virtual Card',
        'Make swift and easy payment with our \nmultifunctional card, and stay in the loop \nabout your finances.',
        'Nearpays'),
    OnboardingInfo(
        'assets/Group 427319151.png',
        'In-App Bank Transfers',
        'Welcome to the all-in-one payment app \nbuilt for your convenience. No waiting, no \ndelays, and no additional fees.',
        'Real-time')
  ];
}
