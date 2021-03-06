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

  TextStyle dizayngaOid = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle courseName = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  TextStyle courseDegree = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ConstColors.instance.courseDegreeInfo,
  );

  TextStyle courseHappinessPercentage = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: ConstColors.instance.primaryColor,
  );
}

class ProductPageStyles extends MyTextStyles {
  ProductPageStyles._init();
  static final ProductPageStyles _instance = ProductPageStyles._init();
  static ProductPageStyles get instance => _instance;

  TextStyle courseHeadline = const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
  );

  TextStyle lessonTheme = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  TextStyle lessonAuthor = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ConstColors.instance.videoDescription);

  TextStyle lessonDate = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ConstColors.instance.videoDescription);

  TextStyle minutStyle = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  TextStyle alertDialogInstruction = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}

class VideoPageStyles extends MyTextStyles {
  VideoPageStyles._init();
  static final VideoPageStyles _instance = VideoPageStyles._init();
  static VideoPageStyles get instance => _instance;

  TextStyle themeStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  TextStyle descriptionStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ConstColors.instance.videoDescription,
  );

  TextStyle usernameStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ConstColors.instance.videoDescription
  );
}
