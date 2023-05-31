import 'package:flutter/material.dart';
import 'package:opal_mvp/utils/app_syles.dart';

import 'widgets/body.dart';

class Dashboard extends StatelessWidget {
  static String routeName = 'dashboard';
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: buildBody(context),
    );
  }
}
