import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notoan_app/components/cards/card.dart';
import 'package:notoan_app/home/appbar/custom_app_bar.dart';
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
              Column(
                children: [
                  // Header
                  Container(
                    height: 350.h,
                    color: appbarColor,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 12.h,
                      ),
                      child: Column(
                        children: [
                          CustomAppBar(),
                          SizedBox(height: 16.h),
                          TextField(
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
                                'Search your task',
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
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              Positioned(
                top: 180.h,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 320.h,
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
                      ),
                      SizedBox(width: 16.w),
                      ProjectCard(
                        imagePath: 'assets/images/work.png',
                        category: '5 days left',
                        title: 'Resign for project cluster\nlanding page',
                        isFavorite: true,
                        text: '40%',
                      ),
                      SizedBox(width: 16.w),
                      ProjectCard(
                        imagePath: 'assets/images/work.png',
                        category: '4 days left',
                        title: 'Resign for project cluster\nlanding page',
                        isFavorite: false,
                        text: '50%',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
