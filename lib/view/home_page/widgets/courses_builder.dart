import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/widgets/course_widget.dart';
import 'package:flutter/material.dart';

class CoursesBuilder extends StatelessWidget {
  const CoursesBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Expanded(
      child: SizedBox(
        child: ListView.separated(
          itemCount: 3,
          itemBuilder: ((context, index) {
            return CourseWidget(
              onTap: (() {}),
            );
          }),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: getHeightConfig(11),
            );
          },
        ),
      ),
    );
  }
}
