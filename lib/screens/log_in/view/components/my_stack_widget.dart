import 'package:flutter/material.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage("assets/images/fon.png"),
        ),
        Positioned(
          left: context.w * 0.43,
          top: context.w * 0.12,
          child: Container(
            height: context.h * 0.2,
            width: context.w * 0.16,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/carrot2.png",
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: context.h * 0.28,
          left: context.w * 0.06,
          child: Text(
            "Loging",
            style: TextStyle(
              fontSize: context.w * 0.05,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Positioned(
          top: context.h * 0.32,
          left: context.w * 0.06,
          child: Text(
            "Enter your emails and password",
            style: TextStyle(
              color: ColorConst.grey,
              fontSize: context.w * 0.03,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
