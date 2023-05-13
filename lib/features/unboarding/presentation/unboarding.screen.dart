import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:speak_nigerian/common/buttons/outline_btn.dart';
import 'package:speak_nigerian/common/buttons/primary_btn.dart';
import 'package:speak_nigerian/constants/constants.dart';
import 'package:speak_nigerian/features/auth/presentation/auth.screen.dart';
import 'package:speak_nigerian/features/unboarding/data/data.dart';
import 'package:speak_nigerian/features/unboarding/presentation/widgets/unboard.dart';

class UnboardingScreen extends StatefulWidget {
  const UnboardingScreen({Key? key}) : super(key: key);

  @override
  State<UnboardingScreen> createState() => _UnboardingScreenState();
}

class _UnboardingScreenState extends State<UnboardingScreen> {
  final PageController _pageController = PageController();
  bool isPageEnd = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 30),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      isPageEnd = value == 2;
                    });
                  },
                  itemCount: 3,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    final item = unboardItems[index];
                    return Unboard(
                      imageName: item['imageName'],
                      title: item['title'],
                      content: item['content'],
                    );
                  },
                ),
              ),
              if (isPageEnd)
                Column(
                  children: [
                    OutlineBtn(
                      'Get Started',
                      onTap: () {},
                      borderRadius: 10,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    PrimaryBtn(
                      'I have an account',
                      onTap: () {
                        Get.to(() => const AuthScreen());
                      },
                      borderRadius: 10,
                    )
                  ],
                )
              else
                Column(
                  children: [
                    SmoothPageIndicator(
                      controller: _pageController,
                      onDotClicked: (index) =>
                          _pageController.jumpToPage(index),
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: primaryColor,
                        dotColor: Color(0xFFE0E0E0),
                        dotHeight: 12,
                        dotWidth: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryBtn(
                      isPageEnd ? "Get Started" : 'Next',
                      onTap: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      width: Get.width / 2,
                      icon: Icons.arrow_forward_ios,
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
