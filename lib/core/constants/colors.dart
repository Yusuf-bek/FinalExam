import 'package:flutter/material.dart';

class ConstColors {
  ConstColors._init();
  static final ConstColors _instance = ConstColors._init();
  static ConstColors get instance => _instance;

  Color loaderBackground = const Color(0xff050352);
  Color primaryColor = const Color(0xff31B9CC);
  Color videoDescription = const Color(0xff8F9698);
}
