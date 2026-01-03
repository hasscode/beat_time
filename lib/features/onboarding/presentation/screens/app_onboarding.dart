import 'package:flutter/material.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/utils/onboarding_items.dart';
import '../widgets/onboarding_body.dart';


class AppOnboarding extends StatefulWidget {
  const AppOnboarding({super.key});

  @override
  State<AppOnboarding> createState() => _AppOnboardingState();
}

class _AppOnboardingState extends State<AppOnboarding> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDark,
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() => currentIndex = index);
        },
        children: List.generate(
          items.length,
              (i) => OnboardingBody(
            pageController: pageController,
            currentIndex: currentIndex,
            pageIndex: i,
          ),
        ),
      ),
    );
  }
}
