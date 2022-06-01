import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/NumberPone/view/components/intl_phone_field.dart';
import 'package:nectar_app/screens/NumberPone/view/phone_number_page.dart';
import 'package:nectar_app/screens/widget/image_cont_button.dart';



class SignIn extends StatelessWidget {
  SignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage("assets/images/fruits.png"),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: context.w * 0.06,
                
              ),
              child: Container(
                height: context.h * 0.1,
                width: context.w * 0.7,
                child: Text(
                  "Get your groceries with nectar",
                  style: TextStyle(
                    color: ColorConst.black,
                    fontSize: context.w * 0.075,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.w * 0.07,
            ),
            IntlPhoneFieldWidget(),
            Divider(
              endIndent: context.w * 0.06,
              indent: context.w * 0.06,
              color: ColorConst.grey,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.04,
                left: context.w * 0.28,
              ),
              child: Text(
                "Or connect with social media",
                style: TextStyle(
                  color: ColorConst.grey,
                  fontSize: context.w * 0.030,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: context.w * 0.10,
                top: context.h * 0.035,
              ),
              child: ImageContButton(
                name: "Continue with Google",
                image: "assets/images/goog.png",
                color: ColorConst.buttonBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PhoneNumberPage();
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: context.w * 0.10,
                top: context.h * 0.01,
              ),
              child: ImageContButton(
                name: "Continue with FaceBook",
                image: "assets/images/face.png",
                color: ColorConst.buttonBlue,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const PhoneNumberPage();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

