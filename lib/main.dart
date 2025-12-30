import 'package:beat_time_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BeatTime());
}

class BeatTime extends StatelessWidget {
  const BeatTime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
