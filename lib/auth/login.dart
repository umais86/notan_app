import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/components/text_field/pass_text_field.dart';
import 'package:notoan_app/components/text_field/text_field.dart';
import 'package:notoan_app/components/text_field/text_field_label.dart';
import 'package:notoan_app/theme/colors.dart';
import 'package:notoan_app/utils/buttons/custom_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login Account',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Please login with registered account',
                  style: TextStyle(
                    color: subColor,
                    fontFamily: 'Outfit',
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(height: 24.h),

                TextFieldLabel(label: 'Email or Phone Number'),
                SizedBox(height: 6.h),
                CustomTextField(
                  controller: _emailController,
                  hint: 'Enter your email or phone number',
                  iconPath: 'assets/icons/mail.png',
                ),
                SizedBox(height: 16.h),
                TextFieldLabel(label: 'Password'),
                SizedBox(height: 6.h),
                PassTextField(
                  controller: _passController,
                  hint: 'Enter your password',
                ),
                SizedBox(height: 14.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: txtGcolor,
                        fontFamily: 'Outfit',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                CustomElevatedButton(onPressed: () {}, label: 'Sign In'),
                SizedBox(height: 20.h),
                Center(
                  child: Text(
                    'Or using other method',
                    style: TextStyle(
                      color: subColor,
                      fontFamily: 'Outfit',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/google.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        'Sign Up with Goggle',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.h),
                InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/facebook.png',
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        'Sign Up with Facebook',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit',
                        ),
                      ),
                    ],
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
