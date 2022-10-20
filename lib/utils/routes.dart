import 'package:flutter/cupertino.dart';
import '../models/app_routes.dart';
import '../screens/home_screen/page/home_screen.dart';
import '../screens/stepper_screen/page/stepper_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().stepperScreen: (context) => const StepperScreen(),
  AppRoutes().homeScreen: (context) => const HomeScreen(),
};
