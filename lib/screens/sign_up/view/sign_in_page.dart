import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/screens/log_in/view/components/my_stack_widget.dart';
import 'package:nectar_app/screens/log_in/view/components/my_text_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyStack(
              text: "Sign Up",
              text2: "Enter your credentials to continue",
            ),
            TextWidget(
              text: "Username",
              color: ColorConst.grey,
            )
          ],
        ),
      ),
    );
  }
}
