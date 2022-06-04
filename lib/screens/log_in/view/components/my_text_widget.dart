import 'package:flutter/material.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';

class TextWidget extends StatelessWidget {
  final text;
  final color;
  final textSize;

  TextWidget({
    Key? key,
    this.text,
    this.color,
    this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: context.w * 0.059,
        top: context.h * 0.02,
      ),
      child: Text(
        text ?? " ",
        style: TextStyle(
          color: color,
          fontSize: textSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
