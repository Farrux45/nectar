import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nectar_app/core/_widget/image_cont_button.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.h * 1,
        width: context.w * 1,
        child: Stack(
          children: [
            Container(
              height: context.h * 1,
              width: context.w * 1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/men.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: context.w * 1.09,
              left: context.w * 0.43,
              child: Column(
                children: [
                  Container(
                    height: context.h * 0.13,
                    width: context.w * 0.13,
                    child: const Image(
                      image: AssetImage(
                        'assets/images/carrot.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: context.h * 0.45,
              child: Padding(
                padding: EdgeInsets.only(left: context.w * 0.2),
                child: Container(
                  height: context.h * 0.5,
                  width: context.w * 0.6,
                  child: const Image(
                    image: AssetImage("assets/images/welcome.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: context.h * 0.53,
              child: Padding(
                padding: EdgeInsets.only(left: context.w * 0.2),
                child: Container(
                  height: context.h * 0.5,
                  width: context.w * 0.6,
                  child: const Image(
                    image: AssetImage("assets/images/text.png"),
                  ),
                ),
              ),
            ),
            Positioned(
              top: context.h * 0.85,
              left: context.w * 0.1,
              child: ImageContButton(
                name: "Get Started",
                color: Color(0xFF53B175),
                onTap: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return ThirdPage();
                  }), (route) => false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
