import 'package:exam/core/constants/colors.dart';
import 'package:flutter/material.dart';

class LoaderPage extends StatelessWidget {
  const LoaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.instance.loaderBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(),
            Image.asset("assets/app.png"),
            Image.asset("assets/text.png"),
          ],
        ),
      ),
    );
  }
}
