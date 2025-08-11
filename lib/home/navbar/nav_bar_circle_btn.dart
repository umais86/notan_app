import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/components/text_field/project_txt_field.dart';
import 'package:notoan_app/components/text_field/text_field.dart';
import 'package:notoan_app/components/text_field/text_field_label.dart';
import 'package:notoan_app/theme/colors.dart';

class NewProjectScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  NewProjectScreen({super.key});

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldLabel(label: 'Title'),
            SizedBox(height: 10.h),
            ProjectTxtField(
              controller: controller,
              hint: 'Title Project',
              iconPath: 'assets/icons/menu.png',
            ),
            SizedBox(height: 16.h),
            TextFieldLabel(label: 'Cover'),
            SizedBox(height: 10.h),
            ProjectTxtField(
              controller: controller,
              hint: 'Cover Project',
              iconPath: 'assets/icons/moun.png',
            ),
            SizedBox(height: 16.h),
            TextFieldLabel(label: 'Group Task'),
            SizedBox(height: 10.h),
            ProjectTxtField(
              controller: controller,
              hint: 'Group Project',
              iconPath: 'assets/icons/folder.png',
              iconPath2: 'assets/icons/d-arrow.png',
            ),

            SizedBox(height: 16.h),
            TextFieldLabel(label: 'Cateogory'),
            SizedBox(height: 10.h),
            ProjectTxtField(
              controller: controller,
              hint: 'Category Project',
              iconPath: 'assets/icons/r-square.png',
              iconPath2: 'assets/icons/d-arrow.png',
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Assign User',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Outfit',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Add User',
                    style: TextStyle(
                      color: txtGcolor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Outfit',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(color: white),
            ),
          ],
        ),
      ),
    );
  }
}
