
import 'package:flutter/material.dart';
import 'package:beat_time_app/core/styles/app_colors.dart';

abstract class AppTextStyles{

  static const  interBold35 = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,

color: AppColors.softText,
    fontSize: 35
  );

  static const  interRegular12 = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,

      color: AppColors.softText,
      fontSize: 12
  );

  static const  interSemiBold = TextStyle(
      fontFamily: 'Inter',
      fontWeight: FontWeight.w600,

      color: AppColors.softText,

  );

}