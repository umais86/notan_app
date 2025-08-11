import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/theme/colors.dart';

class NotificationTile extends StatelessWidget {
  final String avatarPath;
  final String name;
  final String message;
  final String time;
  final String? imagePreview;
  final String? permissionStatus;
  final Color? permissionColor;
  final bool showMenu;

  const NotificationTile({
    super.key,
    required this.avatarPath,
    required this.name,
    required this.message,
    required this.time,
    this.imagePreview,
    this.permissionStatus,
    this.permissionColor,
    this.showMenu = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: AssetImage(avatarPath), radius: 22.r),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black54,
                        fontFamily: 'Outfit',
                      ),
                      children: [
                        TextSpan(
                          text: name,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(text: " $message"),
                      ],
                    ),
                  ),
                  if (imagePreview != null) ...[
                    SizedBox(height: 8.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.asset(
                        imagePreview!,
                        height: 120.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                  if (permissionStatus != null) ...[
                    SizedBox(height: 6.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: permissionColor?.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: permissionColor,
                            size: 16,
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            permissionStatus!,
                            style: TextStyle(
                              color: permissionColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  SizedBox(height: 4.h),
                  Text(
                    time,
                    style: TextStyle(fontSize: 12.sp, color: subColor),
                  ),
                ],
              ),
            ),
            if (showMenu)
              PopupMenuButton<String>(
                color: white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                onSelected: (value) {
                  if (value == "mark") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Marked all as read")),
                    );
                  } else if (value == "remove") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Removed all")),
                    );
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: "mark",
                    child: Row(
                      children: [
                        Icon(Icons.check, size: 18.r),
                        SizedBox(width: 8.w),
                        Text(
                          "Mark all reads",
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  PopupMenuItem(
                    value: "remove",
                    child: Row(
                      children: [
                        Icon(Icons.delete_outline, size: 18.r),
                        SizedBox(width: 8.w),
                        Text(
                          "Remove all",
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                icon: Icon(Icons.more_vert, size: 20.r),
              ),
          ],
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
