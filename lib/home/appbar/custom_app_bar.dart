import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/home/notification/notification.dart';
import 'package:notoan_app/theme/colors.dart';

class CustomAppBar extends StatefulWidget {
  final String hint;
  const CustomAppBar({super.key, required this.hint});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final FocusNode _searchFocusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(width: 5.w),
            Column(
              children: [
                Text(
                  'Hi, Johnathan',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Let's work casually",
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 10.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.black12,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => NotificationPage()),
                  );
                },
                icon: Icon(
                  Icons.notifications_none,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        TextField(
          style: TextStyle(color: white),
          focusNode: _searchFocusNode,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: white),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/filter.png',
                height: 24.h,
                width: 24.w,
                color: white,
              ),
            ),
            hint: Text(
              widget.hint,
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Outfit',
                color: white,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: subColor),
              borderRadius: BorderRadius.circular(16.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: subColor),
            ),
          ),
        ),
      ],
    );
  }
}
