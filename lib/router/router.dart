import 'package:exam/view/home_page/home_page.dart';
import 'package:exam/view/loader_page/loader_page.dart';
import 'package:exam/view/product_page/product_page.dart';
import 'package:exam/view/video_page/video_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  RouteGenerator._init();
  static final RouteGenerator _instance = RouteGenerator._init();
  static RouteGenerator get instance => _instance;
  
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/loader":
        return MaterialPageRoute(builder: (context) {
          return const LoaderPage();
        });
      case "/home":
        return MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        );
      case "/product":
        return MaterialPageRoute(
          builder: (context) {
            return const ProductPage();
          },
        );

      case "/video":
        return MaterialPageRoute(builder: (context) {
          return const VideoPage();
        });
    }
  }
}
