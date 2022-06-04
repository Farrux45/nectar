import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/log_in/view/components/my_stack_widget.dart';
import 'package:nectar_app/screens/log_in/view/components/my_text_widget.dart';
import 'package:nectar_app/screens/log_in/view/components/positined_widget.dart';
import 'package:nectar_app/screens/log_in/view/components/text_form_field_widget.dart';
import 'package:nectar_app/screens/sign_up/view/sign_in_page.dart';
import 'package:nectar_app/screens/widget/image_cont_button.dart';

class LoginInPage extends StatefulWidget {
  const LoginInPage({Key? key}) : super(key: key);

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends State<LoginInPage> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyStack(
              text: "Login",
              text2: "Enter your login and password",
            ),
            TextWidget(
              text: "Email",
              color: ColorConst.grey,
            ),
            SizedBox(
              height: context.h * 0.015,
            ),
            TFW(              userPasswordController: _textController,

              lText: "Types Your Email",
              keybordType: TextInputType.emailAddress,
            ),
            TextWidget(
              text: "Password",
              color: ColorConst.grey,
            ),
            SizedBox(height: context.h * 0.015),
            TFW(
              lText: "Types Your Password",
              keybordType: TextInputType.number,
              userPasswordController: _userPasswordController,
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                      right: context.w * 0.06,
                      top: context.h * 0.02,
                    ),
                    child: TextWidget(
                      text: "Forgot password?",
                    )),
              ],
            ),
            SizedBox(
              height: context.h * 0.02,
            ),
            SecondStackWidget(),
          ],
        ),
      ),
    );
  }
}
