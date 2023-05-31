import 'package:flutter/material.dart';

import '../../../utils/app_syles.dart';
import '../../../widgets/ProcessingBodyContainer.dart';
import '../../../widgets/grey_button.dart';
import '../../analysing_s2/analysis_s2.dart';

analysisS1Body(context) => SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: ProcessingBodyContainer(),
          ),
          Padding(
            padding: AppStyles.bodyPadding,
            child: GreyButton(
              text: 'Por favor, aguarde...',
              onPressed: () {
                Navigator.pushNamed(context, AnalysingS2.routeName);
              },
            ),
          )
        ],
      ),
    );
