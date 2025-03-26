import 'package:todo/core/constant/color_manager.dart';
import 'package:todo/core/constant/text_style.dart';
import 'package:todo/core/routing/route.dart';
import 'package:todo/feature/home/presentation/widgets/routines_container.dart';
import 'package:todo/feature/home/presentation/widgets/tasks_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/core/constant/assets_paths.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    CustomTextStyle myTextStyle = CustomTextStyle(
      textStyle: TextStyle(
        fontSize: 14.sp,
        color: ColorManager.myDark,
        fontWeight: FontWeight.w500,
      ),
    );
    CustomTextStyle myTextStyle2 = CustomTextStyle(
      textStyle: TextStyle(
        fontSize: 16.sp,
        color: ColorManager.myOrange,
        fontWeight: FontWeight.w400,
      ),
    );
    return Scaffold(
      backgroundColor: ColorManager.backGround,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 20.w,
                  left: 20.w,
                  top: 40.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(AssetsPaths.userProfile),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.symmetric(horizontal: 20.w),
                          child: Column(
                            children: [
                              Text(
                                'Welcome Back,',
                                style: myTextStyle.textStyle
                                    .copyWith(color: ColorManager.myGrayTitle),
                              ),
                              Text(
                                'Rama Sabaa',
                                style: myTextStyle.textStyle
                                    .copyWith(fontSize: 18.sp),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(
                          AssetsPaths.notificationSvg,
                          width: 35.w,
                          height: 35.h,
                        ),
                        10.horizontalSpace,
                        SvgPicture.asset(
                          AssetsPaths.menuSvg,
                          width: 35.w,
                          height: 35.h,
                        ),
                      ],
                    ),
                    30.verticalSpace,
                    Padding(
                      padding:
                          EdgeInsetsDirectional.symmetric(horizontal: 12.w),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorManager.myWhite),
                        child: Padding(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                AssetsPaths.searchSvg,
                              ),
                              15.horizontalSpace,
                              Text(
                                'Search',
                                style: myTextStyle.textStyle
                                    .copyWith(color: ColorManager.myGrayTitle),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    15.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Routines',
                            style: myTextStyle.textStyle
                                .copyWith(fontSize: 18.sp)),
                        TextButton(
                            onPressed: () {
                              Get.toNamed(AppRouter.routinesScreen);
                            },
                            child: Text(
                              'See All',
                              style: myTextStyle2.textStyle,
                            ))
                      ],
                    ),
                    15.verticalSpace,
                    Row(
                      children: [
                        RoutinesContainer(
                          imagePath: AssetsPaths.sunAndCloudIcon,
                          progress: 60,
                          title: 'Morning Routine',
                          percent: 0.60,
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        RoutinesContainer(
                          imagePath: AssetsPaths.emojiIcon,
                          progress: 24,
                          title: 'Dribble Shot',
                          percent: 0.24,
                        )
                      ],
                    ),
                    20.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('My Task',
                            style: myTextStyle.textStyle
                                .copyWith(fontSize: 18.sp)),
                        TextButton(
                            onPressed: () {
                              Get.toNamed(AppRouter.myTaskScreen);
                            },
                            child: Text(
                              'See All',
                              style: myTextStyle2.textStyle,
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  15.verticalSpace,
                  const TasksContainer(
                    title: 'To Do',
                    taskNumber: '12 task',
                    color: ColorManager.myGreen,
                    icon: Icons.task,
                  ),
                  const TasksContainer(
                    title: 'In Progress',
                    taskNumber: '9 task',
                    color: ColorManager.myPurple,
                    icon: Icons.list_alt_sharp,
                  ),
                  const TasksContainer(
                    title: 'Done',
                    taskNumber: '6 task',
                    color: ColorManager.myOrange,
                    icon: Icons.done_outlined,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
