import 'package:ecommerce/features/authentication/controllers/onBoarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/onboarding_dotNavigation.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/onboarding_next.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scroll Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                  image: MyAppImages.onBoardingImage1,
                  title: MyAppTexts.onBoardingTitle1,
                  subTitle: MyAppTexts.onBoardingSubTitle1),
              onBoardingPage(
                  image: MyAppImages.onBoardingImage2,
                  title: MyAppTexts.onBoardingTitle2,
                  subTitle: MyAppTexts.onBoardingSubTitle2),
              onBoardingPage(
                  image: MyAppImages.onBoardingImage3,
                  title: MyAppTexts.onBoardingTitle3,
                  subTitle: MyAppTexts.onBoardingSubTitle3),
            ],
          ),

          // Skip Button
          const onBoardingSkip(),

          // Dot Navigation Smooth Page Indicator
          const onBoardingDotNavigation(),

          // Circular Button
          const onBoardingNext(),
        ],
      ),
    );
  }
}
