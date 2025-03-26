import 'package:todo/core/constant/color_manager.dart';
import 'package:todo/core/constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/feature/my_task/presentation/widget/day_tab.dart';

class MyTask extends StatelessWidget {
  const MyTask({super.key});

  @override
  Widget build(BuildContext context) {
    CustomTextStyle myTextStyle = CustomTextStyle(
      textStyle: TextStyle(
        fontSize: 20.sp,
        color: ColorManager.myDark,
        fontWeight: FontWeight.w400,
      ),
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorManager.backGround,
        appBar: AppBar(
          backgroundColor: ColorManager.backGround,
          title: Text(
            'My Task',
            style: myTextStyle.textStyle,
          ),
          toolbarHeight: 90.h,
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            )
          ],
          bottom: const TabBar(
            indicatorColor: ColorManager.myOrange,
            labelColor: ColorManager.myOrange,
            overlayColor: MaterialStatePropertyAll(Colors.transparent),
            dividerColor: ColorManager.backGround,
            tabs: [
              Tab(text: "Today"),
              Tab(text: "Week"),
              Tab(text: "Month"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            DayTab(),
            Text(' '),
            Text(' '),
          ],
        ),
      ),
    );
  }
}
