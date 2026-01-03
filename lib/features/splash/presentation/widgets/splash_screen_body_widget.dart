import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_images.dart';
import '../../../../core/styles/app_text_style.dart';
class SplashScreenBodyWidget extends StatelessWidget {
  const SplashScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Spacer(flex: 1),

        // LOGO CONTAINER
        FadeIn(
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 400),
          child: Container(
            width: 150.w,
            height: 150.h,
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
                  spreadRadius: 4.sp,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.bgDark,
                borderRadius: BorderRadius.circular(22.sp),
              ),
              child: Center(
                child: SvgPicture.asset(AppImages.logoImageSVG),
              ),
            ),
          ),
        ),

         SizedBox(height: 28.h),

        FadeIn(
          delay: Duration(milliseconds: 500),
          duration: Duration(milliseconds: 400),
          child:  Text(
            "Beat Time",
            style: AppTextStyles.interBold35.copyWith(color: Colors.white),
          ),
        ),

         SizedBox(height: 10.h),

        const Spacer(flex: 1),

        FadeIn(
          duration: Duration(milliseconds: 400),
          delay: Duration(milliseconds: 1000),
          child: Text(
            "DISCIPLINE IS A GAME.",
            style: AppTextStyles.interRegular12.copyWith(letterSpacing: 2.5.sp),
          ),
        ),

         SizedBox(height: 10.h),
      ],
    );
  }
}
