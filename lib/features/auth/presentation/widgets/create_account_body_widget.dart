import 'package:beat_time_app/features/auth/presentation/widgets/create_account_form_widget.dart';
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
class CreateAccountBodyWidget extends StatelessWidget {
  const CreateAccountBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h,),

        Text(
          "Start Your Streak",
          style: AppTextStyles.interBold35.copyWith(color: Colors.white,fontSize: 36.sp),
        ),
        SizedBox(height: 15.h,),
        Text(
          "Create an account to track your discipline and compete with friends.",
          textAlign: TextAlign.center,
          style: AppTextStyles.interRegular12.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 50.h,),
CreateAccountFormWidget()
      ],
    );
  }
}
