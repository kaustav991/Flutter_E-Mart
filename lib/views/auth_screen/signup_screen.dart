import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/global_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget().cornerRadius(10),
            10.heightBox,
            "Sign up to $appname"
                .text
                .fontFamily(semibold)
                .white
                .size(18)
                .make(),
            20.heightBox,
            Column(
              children: [
                customtextField(hint: nameHint, title: name),
                10.heightBox,
                customtextField(hint: emailHint, title: email),
                // 10.heightBox,
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: regWithPhonw.text
                        .fontFamily(regular)
                        .black
                        .size(14)
                        .make(),
                  ),
                ),
                customtextField(hint: passwordlHint, title: password),
                10.heightBox,
                customtextField(hint: passwordlHint, title: retupePassword),
                10.heightBox,
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    // 10.widthBox,
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                  fontFamily: semibold,
                                  color: fontGrey,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                  fontFamily: semibold,
                                  color: redColor,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text: " and ",
                              style: TextStyle(
                                  fontFamily: semibold,
                                  color: fontGrey,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text: termsAndCondition,
                              style: TextStyle(
                                  fontFamily: semibold,
                                  color: redColor,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                10.heightBox,
                globalButton(
                        title: signUp,
                        color: isCheck == true ? lightGolden : lightGrey,
                        textColor: redColor,
                        onPress: () {})
                    .box
                    .white
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyHaveacc,
                        style: TextStyle(
                          fontFamily: semibold,
                          color: fontGrey,
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: logIn,
                        style: TextStyle(
                          fontFamily: semibold,
                          color: redColor,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
