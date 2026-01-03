import 'package:flutter/material.dart';

import '../styles/app_text_style.dart';

class CustomTextButtonWidget extends StatelessWidget {
  const CustomTextButtonWidget({
    super.key,
    required this.textColor,
    required this.title,
    required this.onPressed,
    required this.fontWeight
  });

  final String title;
  final Color textColor;
final FontWeight fontWeight;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        overlayColor: textColor
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.interBold35.copyWith(
          fontSize: 14,
          color: textColor,
          fontWeight: fontWeight
        ),
      ),
    );
  }
}
