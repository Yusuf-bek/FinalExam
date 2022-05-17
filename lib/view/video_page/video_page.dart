import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();
    String url = "https://www.youtube.com/watch?v=CijV5FHiOOE&list=PLQWSb1rBptoJ8hUUpxCXnJBcv_gnc2FY5";
    controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(url)!);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
      ),
      builder: (context, player) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              player,
              lessonDescriptionExpanded(),
            ],
          ),
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
