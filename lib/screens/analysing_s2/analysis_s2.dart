import 'package:flutter/material.dart';
import 'package:opal_mvp/utils/app_syles.dart';

import 'widget/body.dart';

class AnalysingS2 extends StatelessWidget {
  static String routeName = 'analysing_s2';

  const AnalysingS2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: analysisS2Body(context),
    );
  }
}
