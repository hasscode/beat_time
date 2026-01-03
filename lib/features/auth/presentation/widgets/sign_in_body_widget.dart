import 'package:beat_time_app/features/auth/presentation/widgets/sign_in_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_images.dart';
import '../../../../core/styles/app_text_style.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_button_widget.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
class SignInBodyWidget extends StatelessWidget {
  const SignInBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h,),
        Container(
          width: 100.w,
          height: 100.h,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.sp),
            gradient: LinearGradient(
              colors: [
                Colors.black54,
                Colors.black54,

              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0xff82B3D9).withOpacity(0.1),
                blurRadius: 30.sp,
                spreadRadius: 4.sp,
              ),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(AppImages.logoImageSVG),
          ),

        ),
        SizedBox(height: 15.h,),
        Text(
          "Beat Time",
          style: AppTextStyles.interBold35.copyWith(color: Colors.white,fontSize: 35.sp),
        ),

        Text(
          "Discipline, gamified.",
          style: AppTextStyles.interRegular12.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 50.h,),
SignInFormWidget()
      ],
    );
  }
}
