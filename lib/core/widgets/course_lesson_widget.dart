import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CourseLessonsWidget extends StatelessWidget {
  const CourseLessonsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
        left: getWidthConfig(16),
        right: getWidthConfig(16),
        bottom: getHeightConfig(12),
      ),
      child: Container(
        height: getHeightConfig(140),
        width: getWidthConfig(343),
        decoration: BoxDecoration(
          color: ConstColors.instance.containerInside,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: getWidthConfig(140),
              height: getHeightConfig(140),
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: getHeightConfig(5),
                    right: getWidthConfig(5),
                    child: Container(
                      width: getWidthConfig(37),
                      height: getHeightConfig(22),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          "11:39",
                          style: ProductPageStyles.instance.minutStyle,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: getWidthConfig(-190),
                    bottom: getHeightConfig(10),
                    child: InkWell(
                      onTap: (() {}),
                      child: Container(
                        width: getWidthConfig(24),
                        height: getWidthConfig(24),
                        child: Image.asset(
                          "assets/play.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: getHeightConfig(10),
                  bottom: getHeightConfig(10),
                  left: getWidthConfig(12),
                  right: getWidthConfig(22),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UX/UI nima? Soha haqida umumiy tushuncha",
                      style: ProductPageStyles.instance.lessonTheme,
                    ),
                    SizedBox(
                      height: getHeightConfig(4),
                    ),
                    Text("Abbos Xazratov",
                        style: ProductPageStyles.instance.lessonAuthor),
                    const Spacer(),
                    Text(
                      "2 kun oldin yuklandi",
                      style: ProductPageStyles.instance.lessonDate,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
