import 'package:flutter/material.dart';

import '../../../utils/app_syles.dart';

buildRichText() => Text(
      'Enviado no seu Pix:',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: AppStyles.mediumX16FontSize,
      ),
    );
