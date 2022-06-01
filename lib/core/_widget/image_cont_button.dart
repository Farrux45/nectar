import 'package:flutter/material.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';

class ImageContButton extends StatelessWidget {
  final top;
  final bottom;
  final name;
  final onTap;
  final color;
  final image;
  ImageContButton({
    Key? key,
    this.name,
    this.bottom,
    this.color,
    this.onTap,
    this.image,
    this.top,
    textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: top ?? 0.0,
          bottom: bottom ?? 0.0,
        ),
        height: context.h * 0.08,
        width: context.w * 0.8,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(19.0),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
             image != null? Container(
                height: context.w * 0.08,
                width: context.h * 0.08,
                child: Image(
                  image: AssetImage(image),
                ),
              ):SizedBox(),
              Text(
                name ?? " ",
                style: TextStyle(
                  color: ColorConst.white,
                  fontSize: context.w * 0.045,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: onTap ?? () {},
    );
  }
}
