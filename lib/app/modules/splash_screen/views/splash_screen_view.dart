import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../animation/fade_animation.dart';
import '../animation/scale_animation.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Get.toNamed('/onboarding');
      // LoginController controller = Get.find<LoginController>();
      // if (controller.auth.currentUser != null) {
      //   Get.offAllNamed(Routes.DASHBAORD);
      // } else {
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => IntroductionScreen()));
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Splash.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            // alignment: Alignment.center,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 950),
              curve: Curves.fastOutSlowIn,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ScaleAnimation(
                      duration: const Duration(milliseconds: 950),
                      child: FadeAnimation(
                        duration: const Duration(milliseconds: 950),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Nearpays logo2b.png",

                              fit: BoxFit.fill,
                              height: 233,
                              width: 233,
                              // style: Theme.of(context).textTheme.headline5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

// class SplashScreenView extends GetView<SplashScreenController> {
//   const SplashScreenView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(const Duration(seconds: 4), () {
//       Get.toNamed('/onboarding');
//       // LoginController controller = Get.find<LoginController>();
//       // if (controller.auth.currentUser != null) {
//       //   Get.offAllNamed(Routes.DASHBAORD);
//       // } else {
//       //   Navigator.push(context,
//       //       MaterialPageRoute(builder: (context) => IntroductionScreen()));
//       // }
//     });
//     return Scaffold(
//       body: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/Splash.png"),
//               fit: BoxFit.fill,
//             ),
//           ),
//           child: Center(
//             // alignment: Alignment.center,
//             child: AnimatedContainer(
//               duration: const Duration(milliseconds: 950),
//               curve: Curves.fastOutSlowIn,
//               child: Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ScaleAnimation(
//                       duration: const Duration(milliseconds: 950),
//                       child: FadeAnimation(
//                         duration: const Duration(milliseconds: 950),
//                         child: Row(
//                           children: [
//                             Image.asset(
//                               "assets/Nearpays logo2b.png",

//                               fit: BoxFit.fill,
//                               height: 233,
//                               width: 233,
//                               // style: Theme.of(context).textTheme.headline5,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )),
//     );
//   }
// }
