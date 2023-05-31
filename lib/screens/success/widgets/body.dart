import 'package:flutter/material.dart';
import 'package:opal_mvp/screens/dashboard/dashboard.dart';
import 'package:opal_mvp/utils/app_syles.dart';
import 'package:opal_mvp/widgets/purpole_elevate_button.dart';

import 'pix_container.dart';
import 'top_align_rich_text.dart';

buildSuccessBody(context) => Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Sucesso!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppStyles.largex24FontSize,
          ),
        ),
        Image.asset(
          'assets/images/Picture2.png',
          fit: BoxFit.contain,
          height: 250,
        ),
        buildPixContainer(context),
        SizedBox(
          height: 50,
          child: Text(
            '#sucesso-010323',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: AppStyles.mediumX16FontSize),
          ),
        ),
        buildRichText(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'R\$',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppStyles.largex27FontSize,
                color: Colors.black,
              ),
            ),
            Baseline(
              baselineType: TextBaseline.alphabetic,
              baseline: 60,
              child: Text(
                '12,98',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppStyles.largeX64FontSize,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Expanded(child: Text('')),
        SizedBox(
          height: AppStyles.normalButtonHeight,
          child: PurpoleElevateButton(
            txt: 'Voltar para a página principal',
            onPressed: () {
              Navigator.pushNamed(context, Dashboard.routeName);
            },
          ),
        ),
      ],
    );
