import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget globalButton({onPress, String? title, textColor, color}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: color, padding: const EdgeInsets.all(12)),
    onPressed: onPress,
    child: title!.text.color(textColor).make(),
    // child: Text(
    //   title,
    //   style: TextStyle(color: textColor),
  );
}
