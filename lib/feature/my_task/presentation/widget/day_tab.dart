import 'package:todo/core/constant/color_manager.dart';
import 'package:todo/feature/home/presentation/widgets/tasks_container.dart';
import 'package:todo/feature/routines/presentation/screens/todo.dart';
import 'package:todo/feature/routines/presentation/widgets/list_task_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DayTab extends StatelessWidget {
  DayTab({super.key});
  List<Todo> todos = [
    Todo(task: 'Meeting', isDone: false),
    Todo(task: 'Sport', isDone: true),
    Todo(task: 'Swimming', isDone: true),
    Todo(task: 'Drink water', isDone: false),
    Todo(task: 'See Friend', isDone: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        ),
        20.verticalSpace,
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
      ],
    );
  }
}
