import 'package:exam/core/constants/colors.dart';
import 'package:exam/cubit/categories/categories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(CategoriesState initialState) : super(initialState);

  int choosenIndex = 0;

  List<Color> colors = [
    ConstColors.instance.primaryColor,
    ConstColors.instance.containerInside,
    ConstColors.instance.containerInside,
    ConstColors.instance.containerInside,
  ];

  void selectOne(int index) {
    choosenIndex = index;
    colors.clear();
    colors.addAll(
      [
        ConstColors.instance.containerInside,
        ConstColors.instance.containerInside,
        ConstColors.instance.containerInside,
        ConstColors.instance.containerInside,
      ],
    );
    colors[index] = ConstColors.instance.primaryColor;
    emit(CategoriesChoosenState());
  }
}
