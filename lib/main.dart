import 'package:exam/core/constants/colors.dart';
import 'package:exam/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "O'rganApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ConstColors.instance.loaderBackground,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: "/loader",
      onGenerateRoute: RouteGenerator.instance.generateRoute,

    );
  }
}
