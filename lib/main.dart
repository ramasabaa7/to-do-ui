import 'package:todo/core/routing/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: GetMaterialApp(
          title: 'ToDo App',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRouter.homeScreen,
          getPages: AppRouter.pages),
    );
  }
}
