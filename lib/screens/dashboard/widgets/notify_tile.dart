import 'package:flutter/material.dart';
import 'package:opal_mvp/screens/info/info.dart';
import 'package:opal_mvp/utils/app_syles.dart';

buildNotifyTile(context,
        {profileTxt1, profileTxt2, title, subTitle, trailing}) =>
    Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: .15),
        ),
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(10),
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(profileTxt1),
              Text(
                profileTxt2,
                style: TextStyle(
                  fontSize: 9,
                  color: AppStyles.subTextLightGrey,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: AppStyles.mediumX15FontSize,
            color: AppStyles.primaryColorDark,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(
            color: AppStyles.subTextLightGrey,
            fontSize: AppStyles.regularSmallFontSize,
          ),
        ),
        trailing: trailing,
        onTap: () {
          Navigator.pushNamed(context, Info.routeName);
        },
      ),
    );
