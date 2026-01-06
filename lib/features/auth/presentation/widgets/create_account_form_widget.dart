import 'package:beat_time_app/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/widgets/custom_button_widget.dart';
import '../../../../core/widgets/custom_text_button_widget.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class CreateAccountFormWidget extends StatefulWidget {
  const CreateAccountFormWidget({super.key});

  @override
  State<CreateAccountFormWidget> createState() => _CreateAccountFormWidgetState();
}

class _CreateAccountFormWidgetState extends State<CreateAccountFormWidget> {

  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            titleExist: false,
            textEditingController: emailController,
            obscureText: false,
            title: 'Email',
            hintText: 'Email Address',
          ),
          SizedBox(height: 30.h),
          CustomTextFormField(
            titleExist: false,
            onTogglePassword: () {
              setState(() {
                obscurePassword = !obscurePassword;
              });
            },
            textEditingController: passwordController,
            obscureText: obscurePassword,
            title: 'Password',
            hintText: 'Password (min. 8 chars)',
            isPassword: true,
          ),
          SizedBox(height: 30.h),
          CustomTextFormField(
            titleExist: false,
            onTogglePassword: () {
              setState(() {
                obscurePassword = !obscurePassword;
              });
            },
            textEditingController: confirmPasswordController,
            obscureText: obscurePassword,
            title: 'Password',
            hintText: 'Confirm Password',
            isPassword: true,
          ),
          SizedBox(height: 30.h),
          CustomButtonWidget(
            textColor: Colors.white,
            title: 'Create Account',
            onPressed: () {},
            backgroundColor: AppColors.primaryBlue,
            width: 400.w,
            height: 60.h,
          ),
           SizedBox(height:  50.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account? ",style: AppTextStyles.interRegular12.copyWith(fontSize: 14.sp),),
              CustomTextButtonWidget(textColor: AppColors.primaryBlue, title: 'Log In', onPressed: (){
                context.go('/signIn');

              }, fontWeight: FontWeight.w400)
            ],
          )

        ],
      ),
    );
  }
}
