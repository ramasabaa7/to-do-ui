import 'package:todo/core/constant/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RoutinesContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final int progress;
  final double percent;

  const RoutinesContainer(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.progress,
      required this.percent});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: ColorManager.myWhite),
      child: Padding(
        padding:
            EdgeInsetsDirectional.symmetric(horizontal: 15.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: ColorManager.myGray2,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                ),
              ),
            ),
            10.verticalSpace,
            Text(
              title,
              style: TextStyle(
                  color: ColorManager.myDark2.withOpacity(0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Center(
              child: Container(
                height: 30.h,
                width: 120.w,
                child: Divider(
                  height: 30.h,
                  color: ColorManager.myGray2,
                  thickness: 1,
                  indent: 0,
                  endIndent: 10,
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    'Progress',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: ColorManager.myGray1,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Text(
                  '$progress %',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorManager.myOrange,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            LinearPercentIndicator(
              width: 120.0.w,
              lineHeight: 4.0,
              percent: percent,
              progressColor: ColorManager.myOrange,
              barRadius: const Radius.circular(20),
            )
          ],
        ),
      ),
    );
  }
}
