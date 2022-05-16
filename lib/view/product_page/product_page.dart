import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/widgets/course_lesson_widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            appBar(context),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) => const CourseLessonsWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding appBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getHeightConfig(10),
      ),
      child: SizedBox(
        height: getHeightConfig(42),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: getWidthConfig(10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  size: 28,
                ),
              ),
            ),
            Positioned(
              top: getHeightConfig(5),
              left: getWidthConfig(55),
              child: Text(
                "UX/UI darslari",
                style: ProductPageStyles.instance.courseHeadline,
              ),
            ),
            Positioned(
              right: getWidthConfig(0),
              child: IconButton(
                onPressed: () {
                  getDialog(context);
                },
                icon: const Icon(
                  Icons.info,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> getDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            titleTextStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
            title: const Text(
              "Foydalanish bo'yicha qo'llanma!",
            ),
            content: SizedBox(
              height: getHeightConfig(135),
              child: Stack(
                children: [
                  Positioned(
                    left: getWidthConfig(0),
                    child: Image.asset("assets/download.png"),
                  ),
                  Positioned(
                    width: getWidthConfig(229),
                    left: getWidthConfig(28),
                    child: Text(
                      "Videoni dasturga yuklab olish uchun!",
                      style: ProductPageStyles.instance.alertDialogInstruction,
                    ),
                  ),
                  Positioned(
                    left: getWidthConfig(0),
                    top: getHeightConfig(45),
                    child: Image.asset("assets/play.png"),
                  ),
                  Positioned(
                    left: getWidthConfig(28),
                    top: getHeightConfig(47),
                    child: Text(
                      "Videoni offlayn ko`rish uchun!",
                      style: ProductPageStyles.instance.alertDialogInstruction,
                    ),
                  ),
                  Positioned(
                    width: getWidthConfig(230),
                    left: getWidthConfig(28),
                    bottom: getHeightConfig(0),
                    child: Text(
                        "Videoni onlayn ko`rish uchun esa umumiy blok ustiga bosing!", style: ProductPageStyles.instance.alertDialogInstruction,),
                  ),
                ],
              ),
            ),
            actions: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: getHeightConfig(30)),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: getWidthConfig(259),
                      height: getHeightConfig(41),
                      decoration: BoxDecoration(
                        color: ConstColors.instance.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Tushunarli",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
