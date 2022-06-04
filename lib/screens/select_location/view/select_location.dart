import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/log_in/view/components/my_text_widget.dart';
import 'package:nectar_app/screens/log_in/view/components/text_form_field_widget.dart';
import 'package:nectar_app/screens/log_in/view/log_in_page.dart.dart';
import 'package:nectar_app/screens/widget/image_cont_button.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = TextEditingController();
    final TextEditingController _userController = TextEditingController();
    

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: ColorConst.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: context.h * 0.35,
                width: context.w * 0.7,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/karta.png"),
                  ),
                ),
              ),
            ),
            TextWidget(
              text: "Select Your Location",
              color: ColorConst.grey,
              textSize: context.h * 0.035,
            ),
            SizedBox(
              height: context.h * 0.02,
            ),
            Container(
                width: context.w * 0.8,
                child: TextWidget(
                  text:
                      "Swithch on your location to stay in tune with what’s happening in your area",
                )),
            TextWidget(
              text: "Your Zone",
            ),
            TFW(
              keybordType: TextInputType.name,
              userPasswordController: _textController,
              icon: Icons.keyboard_arrow_down_outlined,
            ),
            TextWidget(
              text: "Your Area",
            ),
            TFW(
              keybordType: TextInputType.name,
              userPasswordController: _userController,
              icon: Icons.keyboard_arrow_down_outlined,
            ),
            SizedBox(
              height: context.h * 0.08,
            ),
            ImageContButton(
              name: "Submit",
              color: ColorConst.green,
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return const LoginInPage();
                  },
                ), (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
