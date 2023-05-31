import 'package:flutter/material.dart';

import '../../../utils/app_syles.dart';
import 'notify_tile.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Notificações',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppStyles.mediumX20FontSize,
                  ),
                ),
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
              padding: AppStyles.bodyPadding
                  .copyWith(left: 0, top: 0, bottom: 0, right: 20),
              shrinkWrap: true,
              children: [
                buildNotifyTile(
                  context,
                  profileTxt1: '15',
                  profileTxt2: 'Sep',
                  title: 'Você pagou',
                  subTitle: 'Carrefour',
                  trailing: Text(
                    'R\$ 22,54',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppStyles.mediumX16FontSize,
                    ),
                  ),
                ),
                buildNotifyTile(
                  context,
                  profileTxt1: '15',
                  profileTxt2: 'Sep',
                  title: 'Convide 3 amigos e ganhe R\$ 5,00',
                  subTitle: 'on somewhere ',
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                buildNotifyTile(
                  context,
                  profileTxt1: '15',
                  profileTxt2: 'Sep',
                  title: 'Seu crédito de R\$25 chegou!',
                  subTitle: 'From your company',
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                buildNotifyTile(
                  context,
                  profileTxt1: '15',
                  profileTxt2: 'Sep',
                  title: 'Algo aconteceu',
                  subTitle: 'on somewhere ',
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
