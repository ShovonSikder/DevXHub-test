import 'package:flutter/material.dart';
import 'package:opal_mvp/screens/analysing_s1/analysing_s1.dart';
import 'package:opal_mvp/utils/app_syles.dart';
import 'package:opal_mvp/widgets/purpole_elevate_button.dart';

buildButton(context) => Container(
      padding: EdgeInsets.all(40),
      child: SizedBox(
        height: 60,
        child: PurpoleElevateButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, AnalysingS1.routeName, (route) => route.isFirst);
          },
          txt: 'Compartilhar a Opal',
          backgroundColor: AppStyles.primaryColorLight,
        ),
      ),
    );
