import 'package:exam/core/components/size_config.dart';
import 'package:exam/core/components/text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

              TextFormField(
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
