import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nearpays/app/utils.dart/color_lib.dart';
import 'package:nearpays/app/utils.dart/widget/custom_button.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  final _controller = OnboardingController();

  OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Stack(
            children: [
              PageView.builder(
                  controller: _controller.pageController,
                  onPageChanged: _controller.selectedPageIndex,
                  itemCount: _controller.onboardingPages.length,
                  pageSnapping: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _controller.onboardingPages[index].subTitle,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6A706C)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            _controller.onboardingPages[index].title,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6A706C)),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          Image.asset(
                            _controller.onboardingPages[index].imageAsset,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(height: 24),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 64.0),
                            child: Text(
                              _controller.onboardingPages[index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              _controller.onboardingPages.length,
                              (index) => Obx(() {
                                return Container(
                                  margin: const EdgeInsets.all(4),
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color:
                                        _controller.selectedPageIndex.value ==
                                                index
                                            ? ColorsLib.secondary
                                            : Color(0xFFECF1EF),
                                    shape: BoxShape.circle,
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:80.0),
                            child: Container(
                              height: 48,
                              width: MediaQuery.of(context).size.width,
                              child: FloatingActionButton(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: ColorsLib.primary,
                                splashColor: ColorsLib.secondary,
                                onPressed: _controller.forwardAction,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    // Obx(() {
                                      // return 
                                      Text(
                                        controller.isLastPage
                                            ? 'Get Started'
                                            : 'Next',
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      // );}
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              // CustomRaisedButton(
              //   title: _controller.isLastPage ? 'Get Started' : 'Next',
              //   onPress: _controller.forwardAction,
              //   width: MediaQuery.of(context).size.width,
              //   size: 16,
              // ),

              Container(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Already have an account?',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black)),
                      TextSpan(
                        text: ' Login',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: ColorsLib.primary),
                      ),
                    ],
                  ),
                ),
              ),

              // Positioned(
              //   right: 20,
              //   bottom: 20,
              //   child: FloatingActionButton(
              //     elevation: 0,
              //     onPressed: _controller.forwardAction,
              //     child: Obx(() {
              //       return Text(_controller.isLastPage ? 'Start' : 'Next');
              //     }),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
