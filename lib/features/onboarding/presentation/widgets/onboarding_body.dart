import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_text_style.dart';
import '../../../../core/utils/onboarding_items.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_button_widget.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.pageIndex,
  });

  final PageController pageController;
  final int currentIndex;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
           SizedBox(height: 30.h),

          Row(
            children: [
              IconButton(
                onPressed: currentIndex == 0
                    ? null
                    : () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              const Spacer(),
              CustomTextButtonWidget(
                fontWeight: FontWeight.w600,
                textColor: AppColors.softText,
                title: 'Skip',
                onPressed: () {
                  pageController.jumpToPage(items.length - 1);
                },
              ),
            ],
          ),

           SizedBox(height: 40.h),


          Container(
            width: 320.w,
            height: 320.h,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26.sp),
              gradient: LinearGradient(
                colors: [
                  AppColors.primaryBlue,
                  AppColors.primaryBlue.withOpacity(0.6),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryBlue.withOpacity(0.25),
                  blurRadius: 30.sp,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.bgDark,
                borderRadius: BorderRadius.circular(22.sp),
              ),
              child: Center(child: SvgPicture.asset(items[pageIndex].img)),
            ),
          ),

           SizedBox(height: 50.h),


          Text(
            items[pageIndex].title,
            style: AppTextStyles.interBold35.copyWith(
              color: Colors.white,
              fontSize: 24.sp,
            ),
          ),

           SizedBox(height: 30.h),


          Text(
            items[pageIndex].subtitle,
            style: AppTextStyles.interRegular12,
            textAlign: TextAlign.center,
          ),

          const Spacer(),

          SmoothPageIndicator(
            controller: pageController,
            count: items.length,
            effect: ExpandingDotsEffect(
              dotColor: Colors.white,
              activeDotColor: AppColors.primaryBlue,
              dotHeight: 12.h,
              dotWidth: 12.w,
            ),
            onDotClicked: (i){
              pageController.animateToPage(i, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
            },
          ),

          const Spacer(),


          CustomButtonWidget(
            textColor: Colors.white,
            title: currentIndex == items.length - 1 ? 'Get Started' : 'Next',
            onPressed: () {
              print('Button pressed! Current index: $currentIndex'); // للتجربة
              if (currentIndex < items.length - 1) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              }else {

              }
            },
            backgroundColor: AppColors.primaryBlue,
            width: 400.w,
            height: 60.h,
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
