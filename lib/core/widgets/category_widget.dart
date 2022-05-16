import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  String text;
  Function() onTap;
  Color color;

  CategoryWidget({
    Key? key,
    required this.text,
    required this.onTap,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        right: getHeightConfig(25.54),
      ),
      width: getWidthConfig(71),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              width: getWidthConfig(71),
              height: getHeightConfig(72),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Text(
            text,
            style: HomePageStyles.instance.categoriesText,
          ),
        ],
      ),
    );
  }
}
