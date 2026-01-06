import 'package:animate_do/animate_do.dart';
import 'package:beat_time_app/core/styles/app_colors.dart';
import 'package:beat_time_app/features/auth/presentation/widgets/create_account_body_widget.dart';
import 'package:flutter/material.dart';
class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDark,
      body: SafeArea(child:
      SingleChildScrollView(
        child: Center(

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CreateAccountBodyWidget()
            ),
          ),
        ),
      )
    );
  }
}
