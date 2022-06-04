import 'package:flutter/material.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/sign_up/view/sign_in_page.dart';
import 'package:nectar_app/screens/widget/image_cont_button.dart';

class SecondStackWidget extends StatelessWidget {
  const SecondStackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.h * 0.317,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/fon2.png",
              ),
            ),
          ),
        ),
        Positioned(
          top: context.h * 0.001,
          left: context.w * 0.1,
          child: ImageContButton(
            name: "Log In",
            color: ColorConst.green,
            onTap: () {
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                builder: (context) {
                  return const SignUpPage();
                },
              ), (route) => false);
            },
          ),
        ),
        Positioned(
            top: context.h * 0.11,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: context.w * 0.20),
                  child: Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: ColorConst.black,
                      fontSize: context.w * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                InkWell(
                  child: Text(
                    "  Signup",
                    style: TextStyle(
                      color: ColorConst.green,
                      fontSize: context.w * 0.04,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }), (route) => false);
                  },
                ),
              ],
            ))
      ],
    );
  }
}
