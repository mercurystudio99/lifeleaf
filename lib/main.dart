import 'package:fitness/view/main_tab/main_tab_view.dart';
import 'package:fitness/view/meal_planner/meal_planner_view.dart';
import 'package:flutter/material.dart';

import 'common/colo_extension.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'life leaf',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: TColor.primaryColor1, fontFamily: "Poppins"),
      home: const MealPlannerView(),
    );
  }
}
