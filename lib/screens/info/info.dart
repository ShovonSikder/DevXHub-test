import 'package:flutter/material.dart';
import 'package:opal_mvp/utils/app_syles.dart';

import 'widget/body.dart';

class Info extends StatelessWidget {
  static String routeName = 'info';
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: buildBody(context),
    );
  }
}
