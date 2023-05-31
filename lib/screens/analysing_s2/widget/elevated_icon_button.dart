import 'package:flutter/material.dart';
import 'package:opal_mvp/utils/app_syles.dart';

buildElevatedIconButton(context) => SizedBox(
      height: 70,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppStyles.primaryColor,
            foregroundColor: Colors.white),
        icon: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10).copyWith(left: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            'SP',
            style: TextStyle(
              color: AppStyles.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        label: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reembolso Carrefour',
                      style: TextStyle(
                        fontSize: AppStyles.regularFontSize,
                      )),
                  Text(
                    'PIX 1234 - **** - **** - 23',
                    style: TextStyle(
                      fontSize: AppStyles.regularSmallFontSize,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'R\$ 12,98',
              style: TextStyle(
                fontSize: AppStyles.mediumFontSize,
              ),
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
