import 'package:beat_time_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:beat_time_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/styles/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // خلي الـ app edge to edge
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  // غير ألوان الـ status bar والـ navigation bar
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,


      systemNavigationBarColor: AppColors.bgDark,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.transparent,

    ),
  );

  await ScreenUtil.ensureScreenSize();
  runApp(const BeatTime());
}

class BeatTime extends StatelessWidget {
  const BeatTime({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(  // ✅ ضيف theme عشان يطبق على كل الـ app
          scaffoldBackgroundColor: AppColors.bgDark,
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.light,
              statusBarBrightness: Brightness.dark,
            ),
          ),
        ),
        home: const SignInScreen(),
      ),
    );
  }
}