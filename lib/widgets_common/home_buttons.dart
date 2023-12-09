import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget homeButtons({width, height, title, icon, onPress}) {
  return Container(
    child: Expanded(
      child: Column(
        children: [
          Image.asset(icTodaysDeal, width: 26),
          5.heightBox,
          todaysDeal.text.fontFamily(semibold).color(darkFontGrey).make()
        ],
      ),
    ).box.rounded.white.size(width, height).make(),
  );
}
