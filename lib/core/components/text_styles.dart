import 'package:exam/core/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class MyTextStyles {}

class HomePageStyles extends MyTextStyles {
  HomePageStyles._init();
  static final HomePageStyles _instance = HomePageStyles._init();
  static HomePageStyles get instance => _instance;

  TextStyle headlineStyle = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );

  TextStyle countInfoLessons = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: ConstColors.instance.countLessonsInfo,
  );

  TextStyle categoriesText = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  TextStyle dizayngaOid =  const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
