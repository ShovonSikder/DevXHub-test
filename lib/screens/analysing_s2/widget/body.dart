import 'package:flutter/material.dart';
import 'package:opal_mvp/screens/success/success.dart';

import '../../../utils/app_syles.dart';
import '../../../widgets/ProcessingBodyContainer.dart';
import '../../../widgets/grey_button.dart';
import 'elevated_icon_button.dart';

analysisS2Body(context) => SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: ProcessingBodyContainer(),
          ),
          Padding(
            padding: AppStyles.bodyPadding.copyWith(bottom: 0),
            child: buildElevatedIconButton(context),
          ),
          Padding(
            padding: AppStyles.bodyPadding.copyWith(top: 10),
            child: GreyButton(
              text: 'Por favor, aguarde...',
              onPressed: () {
                Navigator.pushNamed(context, Success.routeName);
              },
            ),
          ),
        ],
      ),
    );
