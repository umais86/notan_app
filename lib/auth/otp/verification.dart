import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/auth/otp/otp_text_field.dart';
import 'package:notoan_app/home/navbar/nav_bar.dart';
import 'package:notoan_app/theme/colors.dart';
import 'package:notoan_app/utils/buttons/custom_button.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verification',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 22.sp),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.message_rounded, size: 70, color: txtGcolor),
              SizedBox(height: 30),
              Text(
                'Verification Code',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'We have to sent the code verfication to ',
                style: TextStyle(
                  color: subColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Outfit',
                ),
              ),
              SizedBox(height: 6.h),
              Text(
                'Umais@mail.com',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20.h),
              OtpTextField(
                onCompleted: (code) {
                  print('Entered 4-digit OTP: $code');
                },
              ),
              SizedBox(height: 24.h),
              CustomElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 350,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 20,
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icons/confirm.png',
                                height: 100.h,
                                width: 100.w,
                              ),
                              SizedBox(height: 16.h),
                              Text(
                                'Register Success',
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Congrats! your account is already created \nPlease login to get amazing experience',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w300,
                                  color: subColor,
                                ),
                              ),
                              SizedBox(height: 20.h),
                              CustomElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (_) => NavBar()),
                                  );
                                },
                                label: 'Go to Homepage',
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                label: 'Submit',
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't receive the code?",
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                      color: subColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w300,
                        color: txtGcolor,
                        fontFamily: 'Outfit',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
