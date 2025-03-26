import 'package:todo/core/constant/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TasksContainer extends StatelessWidget {
  final String title;
  final Color color;
  final String taskNumber;
  final IconData icon;

  const TasksContainer(
      {super.key,
      required this.title,
      required this.color,
      required this.taskNumber,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      color: ColorManager.myWhite,
      child: Center(
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                color: ColorManager.myDark2.withOpacity(0.8),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          trailing: Text(
            taskNumber,
            style: TextStyle(
                color: ColorManager.myGray1,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp),
          ),
          leading: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: ColorManager.myWhite,
            ),
          ),
        ),
      ),
    );
  }
}
