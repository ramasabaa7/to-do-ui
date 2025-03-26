import 'package:todo/core/constant/assets_paths.dart';
import 'package:todo/core/constant/color_manager.dart';
import 'package:todo/feature/routines/presentation/screens/todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListTaskContainer extends StatefulWidget {
  final List<Todo> todos;
  final int index;

  const ListTaskContainer({Key? key, required this.todos, required this.index})
      : super(key: key);

  @override
  _ListTaskContainerState createState() => _ListTaskContainerState();
}

class _ListTaskContainerState extends State<ListTaskContainer> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Container(
        decoration: BoxDecoration(
          color: widget.todos[widget.index].isDone
              ? ColorManager.myGray3
              : ColorManager.myWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 1.w, vertical: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: widget.todos[widget.index].isDone
                          ? ColorManager.myWhite
                          : ColorManager.myGray2.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      AssetsPaths.taskSvg,
                    ),
                  ),
                  10.horizontalSpace,
                  Text(
                    widget.todos[widget.index].task,
                    style: TextStyle(
                      color: ColorManager.myDark2.withOpacity(0.8),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Checkbox(
                value: widget.todos[widget.index].isDone,
                onChanged: (val) {
                  setState(() {
                    widget.todos[widget.index].isDone = val!;
                  });
                },
                activeColor: ColorManager.myOrange,
                side: MaterialStateBorderSide.resolveWith(
                  (states) => BorderSide(
                    width: 1.0,
                    color: widget.todos[widget.index].isDone
                        ? ColorManager.myOrange
                        : ColorManager.myGray1,
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
