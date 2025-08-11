import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/components/cards/card.dart';
import 'package:notoan_app/components/cards/task_card.dart';
import 'package:notoan_app/home/appbar/custom_app_bar.dart';
import 'package:notoan_app/home/today_task.dart';
import 'package:notoan_app/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _searchFocusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _searchFocusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Stack(
            children: [
              Container(height: 350.h, color: appbarColor),
              // Foreground content
              SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header area
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 12.h,
                      ),
                      child: Column(
                        children: [
                          CustomAppBar(hint: 'Search your task'),
                          SizedBox(height: 10.h),

                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Your latest project',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Outfit',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'See All',
                                  style: TextStyle(
                                    color: txtGcolor,
                                    fontFamily: 'Outfit',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Card list
                    SizedBox(
                      height: 255.h,
                      child: ListView(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        children: [
                          ProjectCard(
                            imagePath: 'assets/images/work.png',
                            category: '2 days left',
                            title: 'Resign for project cluster\nlanding page',
                            isFavorite: false,
                            text: '36%',
                            text1: 'Alexnder',
                          ),
                          SizedBox(width: 16.w),
                          ProjectCard(
                            imagePath: 'assets/images/work.png',
                            category: '5 days left',
                            title: 'Dashboard of laundry website',
                            isFavorite: true,
                            text: '40%',
                            text1: 'titu',
                          ),
                          SizedBox(width: 16.w),
                          ProjectCard(
                            imagePath: 'assets/images/work.png',
                            category: '4 days left',
                            title: 'Polyglot-kid website',
                            isFavorite: false,
                            text: '50%',
                            text1: 'Ali',
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10.h),

                    // Today Task row AFTER cards
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 13.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Today Task',
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => TodayTask()),
                              );
                            },
                            child: Text(
                              'See All',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: txtGcolor,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => TodayTask()),
                        );
                      },
                      child: TaskCard(
                        priority: "Low",
                        title: "Pixel Perfect Design",
                        subtitle: "Design Landing Page",
                        timeRange: "10.00 AM - 10.30 AM",
                        status: "Completed",
                        statusColor: Colors.green,
                        avatars: [
                          'assets/images/work.png',
                          'assets/images/onboard.png',
                          'assets/images/logo.png',
                        ],
                        priorityColor: Colors.blue.shade50,
                        priorityColorbg: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
