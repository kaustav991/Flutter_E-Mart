import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/auth_screen/signup_screen.dart';
import 'package:emart_app/views/home_screen/home.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:emart_app/widgets_common/custom_textfield.dart';
import 'package:emart_app/widgets_common/global_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "Log in to $appname"
                .text
                .fontFamily(semibold)
                .white
                .size(18)
                .make(),
            20.heightBox,
            Column(
              children: [
                customtextField(hint: emailHint, title: email),
                20.heightBox,
                customtextField(hint: passwordlHint, title: password),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text
                        .fontFamily(regular)
                        .black
                        .size(14)
                        .make(),
                  ),
                ),
                5.heightBox,
                globalButton(
                    title: logIn,
                    color: redColor,
                    textColor: whiteColor,
                    onPress: () {
                      Get.to(() => Home());
                    }).box.white.width(context.screenWidth - 50).make(),
                10.heightBox,
                createNewAccount.text
                    .fontFamily(regular)
                    .color(fontGrey)
                    .size(14)
                    .make(),
                10.heightBox,
                globalButton(
                    title: signUp,
                    color: lightGolden,
                    textColor: redColor,
                    onPress: () {
                      Get.to(() => SignupScreen());
                    }).box.white.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginWith.text
                    .fontFamily(regular)
                    .color(fontGrey)
                    .size(14)
                    .make(),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: lightGrey,
                        child: Image.asset(
                          socialIconList[index],
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                )
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
