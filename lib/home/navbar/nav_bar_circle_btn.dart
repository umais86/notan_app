import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class NewProjectScreen extends StatelessWidget {
  const NewProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 22.r),
        ),
        title: Text(
          'New Project',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'Outfit',
          ),
        ),
        centerTitle: true,
      ),
      body: Column(children: [

        ],
      ),
    );
  }
}
