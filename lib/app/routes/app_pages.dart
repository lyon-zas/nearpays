import 'package:get/get.dart';

import '../modules/category/bindings/category_binding.dart';
import '../modules/category/views/category_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/merchants_personal_info/bindings/merchants_personal_info_binding.dart';
import '../modules/merchants_personal_info/views/merchants_personal_info_view.dart';
import '../modules/merchants_verify_phone/bindings/merchants_verify_phone_binding.dart';
import '../modules/merchants_verify_phone/views/merchants_verify_phone_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/users_personal_info/bindings/users_personal_info_binding.dart';
import '../modules/users_personal_info/views/users_personal_info_view.dart';
import '../modules/users_verify_phone/bindings/users_verify_phone_binding.dart';
import '../modules/users_verify_phone/views/users_verify_phone_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => const CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.USERS_VERIFY_PHONE,
      page: () => const UsersVerifyPhoneView(),
      binding: UsersVerifyPhoneBinding(),
    ),
    GetPage(
      name: _Paths.USERS_PERSONAL_INFO,
      page: () => const UsersPersonalInfoView(),
      binding: UsersPersonalInfoBinding(),
    ),
    GetPage(
      name: _Paths.MERCHANTS_VERIFY_PHONE,
      page: () => const MerchantsVerifyPhoneView(),
      binding: MerchantsVerifyPhoneBinding(),
    ),
    GetPage(
      name: _Paths.MERCHANTS_PERSONAL_INFO,
      page: () => const MerchantsPersonalInfoView(),
      binding: MerchantsPersonalInfoBinding(),
    ),
  ];
}
