import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/onBoarding/view/components/onBoarding_stack_widget.dart';
import 'package:nectar_app/screens/widget/image_cont_button.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.h * 1,
        width: context.w * 1,
        child: OnBoardingStack(),
      ),
    );
  }
}

