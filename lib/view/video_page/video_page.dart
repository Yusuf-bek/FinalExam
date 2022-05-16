import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: getHeightConfig(211),
              color: Colors.green,
            ),
            lessonDescriptionExpanded(),
          ],
        ),
      ),
    );
  }

  Expanded lessonDescriptionExpanded() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getHeightConfig(12),
          horizontal: getWidthConfig(16),
        ),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Figmada mobil ilova dizayni",
                style: VideoPageStyles.instance.themeStyle,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeightConfig(4),
                  bottom: getHeightConfig(14),
                ),
                child: Text(
                  "Bu darsda biz siz bilan figma dasturida web sayt uchun dizayn qilishni sinab ko`ramiz.  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of typ",
                  style: VideoPageStyles.instance.descriptionStyle,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Text(
                    "@abbos_khazratov",
                    style: VideoPageStyles.instance.usernameStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
