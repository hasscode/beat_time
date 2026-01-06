import 'package:beat_time_app/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.textEditingController,
    required this.obscureText,
    required this.title,
    required this.hintText,
    this.isPassword = false,
    this.onTogglePassword,
   required this.titleExist,
  });

  final TextEditingController textEditingController;
  final bool obscureText;
  final bool titleExist;
  final String title;
  final String hintText;
  final bool isPassword;
  final VoidCallback? onTogglePassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: titleExist? Text(
            title,
            style: AppTextStyles.interSemiBold.copyWith(color: Colors.white)
          ):SizedBox.shrink(),
        ),
        SizedBox(height: 12.h),
        TextFormField(

          style: AppTextStyles.interRegular12.copyWith(color: Colors.white,fontSize: 16.sp),
          controller: textEditingController,
          cursorColor: Colors.white,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xff1C2226),
            errorStyle: TextStyle(
              height: 0,
              fontSize: 12.sp,
              color: Colors.red,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color:Colors.grey),
            suffixIcon: isPassword
                ? IconButton(
              icon: Icon(
                obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.white70,
              ),
              onPressed: onTogglePassword,
            )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.sp),
              borderSide: const BorderSide(color: Color(0xff3D4852)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.sp),
              borderSide: const BorderSide(color: Color(0xff3D4852)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.sp),
              borderSide: const BorderSide(color: Color(0xff3D4852)),
            ),
          ),
          validator: (v) {
            if (v == null || v.isEmpty) {
              return 'This field is required';
            }
            return null;
          },
        ),
      ],
    );
  }
}
