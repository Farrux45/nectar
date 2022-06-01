import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/_widget/image_cont_button.dart';
import 'package:nectar_app/core/_widget/my_stack_widget.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/sign_in_page.dart';

class LoginInPage extends StatefulWidget {
  const LoginInPage({Key? key}) : super(key: key);

  @override
  State<LoginInPage> createState() => _LoginInPageState();
}

class _LoginInPageState extends State<LoginInPage> {
  bool _passwordVisible = false;
  final TextEditingController _textController = TextEditingController();
    final TextEditingController _userPasswordController =
        TextEditingController();

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyStack(),
          Padding(
            padding: EdgeInsets.only(
              right: context.w * 0.8,
              top: context.h * 0.04,
            ),
            child: Text(
              "Email",
              style: TextStyle(
                color: ColorConst.grey,
                fontSize: context.w * 0.03,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: context.h * 0.015,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.w * 0.06),
            child: TextFormField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: "Types of your Email",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: context.w * 0.73,
              top: context.h * 0.04,
            ),
            child: Text(
              "Password",
              style: TextStyle(
                color: ColorConst.grey,
                fontSize: context.w * 0.03,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: context.h * 0.015),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: _userPasswordController,
            obscureText: !_passwordVisible, //This will obscure text dynamically
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your passworrd',
              // Here is key idea
              suffixIcon: IconButton(
                icon: Icon(
                  // Based on passwordVisible state choose the icon
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                  color: Theme.of(context).primaryColorDark,
                ),
                onPressed: () {
                  // Update the state i.e. toogle the state of passwordVisible variable
                  setState(
                    () {
                      _passwordVisible = !_passwordVisible;
                    },
                  );
                },
              ),
            ),
          ),
          Text("wkjfnjwenfw"),
        ],
      ),
     );
  }
}
