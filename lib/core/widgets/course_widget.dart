import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: getWidthConfig(343),
      height: getHeightConfig(211),
      decoration: BoxDecoration(
        color: ConstColors.instance.containerInside,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
