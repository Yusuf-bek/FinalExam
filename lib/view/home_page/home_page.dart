import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/widgets/category_widget.dart';
import 'package:exam/core/widgets/course_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List categoriesTexts = ["Dasturlash", "Dizayn", "SMM", "Til kurslari"];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidthConfig(16.0),
            vertical: getWidthConfig(13),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidthConfig(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Qanday darslar sizni qiziqtiradi?",
                      style: HomePageStyles.instance.headlineStyle,
                    ),
                    SizedBox(height: getHeightConfig(5)),
                    const Text("28 xil yo'nalishda darsliklar mavjud")
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeightConfig(22),
                  bottom: getHeightConfig(19),
                ),
                child: searchContainer(),
              ),
              categories(),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeightConfig(24),
                  bottom: getHeightConfig(14),
                ),
                child: Text(
                  "Dizaynga oid kurslar",
                  style: HomePageStyles.instance.dizayngaOid,
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ListView.separated(
                    itemCount: 3,
                    itemBuilder: ((context, index) {
                      return  CourseWidget(onTap: (() {
                        
                      }),);
                    }),
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getHeightConfig(11),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox categories() {
    return SizedBox(
      height: getHeightConfig(98),
      width: double.infinity,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryWidget(
              text: categoriesTexts[index],
              onTap: () {},
            );
          }),
    );
  }

  Container searchContainer() {
    return Container(
      width: getWidthConfig(343),
      height: getHeightConfig(41),
      decoration: BoxDecoration(
        color: ConstColors.instance.containerInside,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getHeightConfig(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Izlash"),
            Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}

