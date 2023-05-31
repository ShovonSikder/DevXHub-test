import 'package:flutter/material.dart';
import 'package:opal_mvp/screens/success/widgets/body.dart';

import '../../utils/app_syles.dart';

class Success extends StatelessWidget {
  static String routeName = 'success';
  const Success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: AppStyles.bodyPadding.copyWith(top: 100),
        child: buildSuccessBody(context),
      )),
    );
  }
}
