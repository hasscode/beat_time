import 'package:beat_time_app/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_button_widget.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class SignInFormWidget extends StatefulWidget {
  const SignInFormWidget({super.key});

  @override
  State<SignInFormWidget> createState() => _SignInFormWidgetState();
}

class _SignInFormWidgetState extends State<SignInFormWidget> {
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            textEditingController: TextEditingController(),
            obscureText: false,
            title: 'Email',
            hintText: 'Enter Your Email',
          ),
          SizedBox(height: 30.h),
          CustomTextFormField(
            onTogglePassword: () {
              setState(() {
                obscurePassword = !obscurePassword;
              });
            },
            textEditingController: TextEditingController(),
            obscureText: obscurePassword,
            title: 'Password',
            hintText: 'Enter Your Password',
            isPassword: true,
          ),
          Align(
            alignment: AlignmentGeometry.topRight,
            child: CustomTextButtonWidget(
              textColor: AppColors.primaryBlue,
              title: 'Forgot Password?',
              onPressed: () {},
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30.h),
          CustomButtonWidget(
            textColor: Colors.white,
            title: 'Sign In',
            onPressed: () {},
            backgroundColor: AppColors.primaryBlue,
            width: 400.w,
            height: 60.h,
          ),
           SizedBox(height:  50.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account? ",style: AppTextStyles.interRegular12.copyWith(fontSize: 14.sp),),
              CustomTextButtonWidget(textColor: AppColors.primaryBlue, title: 'Sign Up', onPressed: (){}, fontWeight: FontWeight.w400)
            ],
          )

        ],
      ),
    );
  }
}
