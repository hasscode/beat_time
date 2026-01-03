
import 'package:beat_time_app/core/styles/app_colors.dart';
import 'package:beat_time_app/features/onboarding/presentation/screens/app_onboarding.dart';
import 'package:beat_time_app/features/splash/presentation/widgets/splash_screen_body_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const AppOnboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDark,
      body: SafeArea(
        child: Center(
          child: const SplashScreenBodyWidget()
        ),
      ),
    );
  }
}
