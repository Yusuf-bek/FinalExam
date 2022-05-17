import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  Function() onTap;
  String title;
  String courseDegree;
  String imgLink;

  CourseWidget({
    Key? key,
    required this.onTap,
    required this.title,
    required this.courseDegree,
    required this.imgLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getWidthConfig(343),
        height: getHeightConfig(211),
        decoration: BoxDecoration(
          color: ConstColors.instance.containerInside,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: getHeightConfig(7),
            right: getWidthConfig(6),
            left: getWidthConfig(8),
            bottom: getHeightConfig(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getWidthConfig(329),
                height: getHeightConfig(132),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imgLink,),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(),
              Text(
                title,
                style: HomePageStyles.instance.courseName,
              ),
              Text(
                courseDegree,
                style: HomePageStyles.instance.courseDegree,
              ),
              SizedBox(
                height: getHeightConfig(15),
                width: getWidthConfig(42),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      CupertinoIcons.smiley,
                      size: 15,
                      color: ConstColors.instance.primaryColor,
                    ),
                    Text(
                      "97%",
                      style: HomePageStyles.instance.courseHappinessPercentage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
