import 'package:animate_do/animate_do.dart';
import 'package:beat_time_app/core/styles/app_colors.dart';
import 'package:beat_time_app/core/widgets/custom_button_widget.dart';
import 'package:beat_time_app/core/widgets/custom_text_button_widget.dart';
import 'package:beat_time_app/core/widgets/custom_text_form_field.dart';
import 'package:beat_time_app/features/auth/presentation/widgets/sign_in_body_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/styles/app_images.dart';
import '../../../../core/styles/app_text_style.dart';
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: FadeIn(
              delay: Duration(milliseconds: 500),
              duration: Duration(milliseconds: 400),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SignInBodyWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
