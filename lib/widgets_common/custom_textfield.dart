import 'package:emart_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customtextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      (title ?? "").text.color(redColor).fontFamily(semibold).size(16).make(),
      10.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: hint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide(
              color: const Color.fromRGBO(204, 204, 204, 1.0),
            )),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: redColor,
            )),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: const Color.fromRGBO(204, 204, 204, 1.0),
            )),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: const Color.fromRGBO(204, 204, 204, 1.0),
            ))),
      ),
    ],
  );
}
