import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';
import 'package:notoan_app/utils/buttons/custom_button.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/onboard.png',
                  height: 288.h,
                  width: 285.w,
                ),
                SizedBox(height: 30.h),
                Text(
                  'The Best App For Tracking\nYour Projects',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 28.h),
                CustomElevatedButton(onPressed: () {}, label: 'Create Account'),
                SizedBox(height: 28.h),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Already Have an Account',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: txtGcolor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
