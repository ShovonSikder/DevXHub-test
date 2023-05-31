import 'package:flutter/material.dart';

import '../utils/app_syles.dart';

class ProcessingBodyContainer extends StatelessWidget {
  const ProcessingBodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppStyles.processingBodyContainerPadding,
      margin: EdgeInsets.only(top: 60),
      decoration: BoxDecoration(
          color: AppStyles.bodyContainerColor,
          borderRadius: BorderRadius.circular(46),
          // border: null,
          backgroundBlendMode: BlendMode.colorBurn),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Analisando...',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppStyles.largex24FontSize,
                ),
              ),
              Text(
                'Estamos processando o seu cupon, levaremos menos de 3 segundos...',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: AppStyles.subTextGrey,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/Picture1.png',
            height: 233,
            width: 233,
            fit: BoxFit.contain,
          ),
          Text('22/01/2023  (10:30)')
        ],
      ),
    );
  }
}
