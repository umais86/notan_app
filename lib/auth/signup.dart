import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/components/text_field.dart';
import 'package:notoan_app/components/text_field_label.dart';
import 'package:notoan_app/theme/colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                'Start learning with create your account',
                style: TextStyle(
                  color: subColor,
                  fontFamily: 'Outfit',
                  fontSize: 13.sp,
                ),
              ),
              SizedBox(height: 10.h),
              TextFieldLabel(label: 'Username'),
              SizedBox(height: 10.h),
              CustomTextField(
                hint: 'Create your username',
                iconPath: 'assets/icons/profile.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
