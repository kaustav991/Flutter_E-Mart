import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/widgets_common/home_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: const EdgeInsets.all(12),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            color: lightGrey,
            alignment: Alignment.center,
            height: 60,
            child: TextFormField(
              decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  isDense: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          //swipers
          VxSwiper.builder(
            aspectRatio: 16 / 9,
            autoPlay: true,
            height: 120,
            enlargeCenterPage: true,
            itemCount: slidersList.length,
            itemBuilder: (context, index) {
              return Image.asset(slidersList[index], fit: BoxFit.fill)
                  .box
                  .clip(Clip.antiAlias)
                  .margin(const EdgeInsets.symmetric(horizontal: 8))
                  .rounded
                  .make();
            },
          ),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              2,
              (index) => homeButtons(
                height: context.screenHeight * 0.2,
                width: context.screenWidth * 0.2,
                title: index == 0 ? todaysDeal : flashSale,
                icon: index == 0 ? icTodaysDeal : icFlashDeal,
                onPress: () {
                  // Add your onPress logic here
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}
