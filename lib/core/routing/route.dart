import 'package:todo/feature/home/presentation/screens/home_screen.dart';
import 'package:todo/feature/my_task/presentation/screens/my_task_screen.dart';
import 'package:todo/feature/routines/presentation/screens/routines_screen.dart';
import 'package:get/get.dart';

mixin AppRouter {
  static const String homeScreen = '/home';
  static const String routinesScreen = '/routines';
  static const String myTaskScreen = '/myTask';

  static final List<GetPage> pages = [
    GetPage(name: homeScreen, page: () => Home()),
    GetPage(name: routinesScreen, page: () => Routines()),
    GetPage(name: myTaskScreen, page: () => MyTask()),
  ];
}
