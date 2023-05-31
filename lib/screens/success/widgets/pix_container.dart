import 'package:flutter/material.dart';
import 'package:opal_mvp/utils/app_syles.dart';

buildPixContainer(context) => Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppStyles.primaryColor,
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Image.asset(
              'assets/images/Picture3.png',
              fit: BoxFit.contain,
              height: 48,
              width: 48,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PixCard',
                style: TextStyle(
                  fontSize: AppStyles.regularFontSize,
                  color: Colors.white,
                ),
              ),
              Text(
                'Já foi creditado',
                style: TextStyle(
                  fontSize: AppStyles.regularSmallFontSize,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
