import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/NumberPone/view/components/intl_phone_field.dart';
import 'package:nectar_app/screens/log_in/view/components/my_text_widget.dart';
import 'package:nectar_app/screens/verification/view/verification_page.dart';

class PhoneNumberPage extends StatelessWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorConst.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.01,
                right: context.w * 0.23,
              ),
              child: TextWidget(
                text: "Enter your mobile number",
                color: ColorConst.black,
                textSize: context.w * 0.055,
              )),
          SizedBox(
            height: context.h * 0.02,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: context.w * 0.70,
            ),
            child: TextWidget(
              text: "Mobile Number",
              color: ColorConst.grey,
              textSize: context.w * 0.030,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: context.h * 0.01),
            child: const IntlPhoneFieldWidget(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorConst.green,
        child: Icon(
          Icons.arrow_forward_ios_outlined,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const VerificationPage();
              },
            ),
          );
        },
      ),
    );
  }
}
