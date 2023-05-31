import 'package:flutter/material.dart';
import 'package:opal_mvp/screens/info/widget/button.dart';

import '../../../utils/app_syles.dart';

buildBody(context) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: AppStyles.bodyPadding,
            decoration: BoxDecoration(
              color: AppStyles.appBarContainerColor,
              boxShadow: [],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Picture5.png',
                  fit: BoxFit.contain,
                  height: 46,
                  width: 47,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Sobre nós',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppStyles.mediumX15FontSize,
                  ),
                ),
                Expanded(child: Text('')),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(
                    'assets/images/Picture4.png',
                    height: 15,
                    width: 15,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: ListView(
            shrinkWrap: true,
            padding: AppStyles.bodyPadding,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Construindo juntos um mundomais igual e solidário ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppStyles.largex25FontSize,
                  ),
                ),
              ),
              Text(
                'Opal nasceu da vontade de engajar as empresas na luta contra a precariedade menstrual. Sabemos que 52% das Brasileiras já sofreram com pobreza menstrual.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppStyles.mediumX20FontSize,
                ),
              ),
              buildButton(context),
              Text(
                'Agradecemos imensamente por fazer parte do nosso movimento. Juntos, fazemos a diferença!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppStyles.mediumX20FontSize,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Compartilhe nas suas redes sociais ou com o seu RH!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppStyles.mediumX20FontSize,
                ),
              ),
              buildButton(context),
            ],
          ))
        ],
      ),
    );
