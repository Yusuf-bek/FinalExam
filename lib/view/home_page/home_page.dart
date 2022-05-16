
import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:exam/core/constants/colors.dart';
import 'package:exam/core/widgets/category_widget.dart';
import 'package:exam/core/widgets/course_widget.dart';
import 'package:exam/cubit/categories/categories_cubit.dart';
import 'package:exam/cubit/categories/categories_state.dart';
import 'package:exam/view/home_page/widgets/courses_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List categoriesTexts = ["Dizayn","Dasturlash", "SMM", "Til kurslari"];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) {
        return CategoriesCubit(CategoriesInitialState());
      },
      child: Builder(
        builder: (context) => getScaffold(context),
      ),
    );
  }

  Scaffold getScaffold(BuildContext context) {
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
              categories(context),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeightConfig(24),
                  bottom: getHeightConfig(14),
                ),
                child: Text(
                  "${categoriesTexts[context.watch<CategoriesCubit>().choosenIndex]}ga oid kurslar",
                  style: HomePageStyles.instance.dizayngaOid,
                ),
              ),
              const CoursesBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox categories(BuildContext context) {
    return SizedBox(
      height: getHeightConfig(98),
      width: double.infinity,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryWidget(
              color: context.watch<CategoriesCubit>().colors[index],
              text: categoriesTexts[index],
              onTap: () {
                context.read<CategoriesCubit>().selectOne(index);
              },
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

