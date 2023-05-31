import 'package:flutter/material.dart';
import 'package:opal_mvp/screens/analysing_s1/widgets/body.dart';
import 'package:opal_mvp/utils/app_syles.dart';

class AnalysingS1 extends StatelessWidget {
  static String routeName = 'analysing_s1';

  const AnalysingS1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: analysisS1Body(context),
    );
  }
}
