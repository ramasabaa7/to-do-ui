import 'package:todo/core/constant/color_manager.dart';
import 'package:todo/core/constant/text_style.dart';
import 'package:todo/feature/routines/presentation/screens/todo.dart';
import 'package:todo/feature/routines/presentation/widgets/list_task_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class Routines extends StatefulWidget {
  const Routines({super.key});

  @override
  _RoutinesState createState() => _RoutinesState();
}

class _RoutinesState extends State<Routines> {
  CustomTextStyle myTextStyle = CustomTextStyle(
    textStyle: TextStyle(
      fontSize: 18.sp,
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
  List<Todo> todos = [
    Todo(task: 'Meeting', isDone: false),
    Todo(task: 'Sport', isDone: true),
    Todo(task: 'Swimming', isDone: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routines'),
        centerTitle: true,
        toolbarHeight: 70.h,
        backgroundColor: ColorManager.backGround,
      ),
      backgroundColor: ColorManager.backGround,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 20.w, vertical: 20.h),
              child: TableCalendar(
                calendarFormat: CalendarFormat.month,
                calendarStyle: const CalendarStyle(
                    todayDecoration: BoxDecoration(
                        color: ColorManager.myOrange, shape: BoxShape.circle),
                    selectedDecoration:
                        BoxDecoration(color: ColorManager.myGray1),
                    todayTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white)),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Task', style: myTextStyle.textStyle),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: myTextStyle2.textStyle,
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTaskContainer(
                index: index,
                todos: todos,
              );
            },
          ),
        ),
      ]),
    );
  }
}
