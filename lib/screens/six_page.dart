import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/_widget/image_cont_button.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/log_in_page.dart';

class SixPage extends StatelessWidget {
  const SixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = TextEditingController();

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
            Text(
              "Select Your Location",
              style: TextStyle(
                color: ColorConst.black,
                fontSize: context.w * 0.05,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: context.h * 0.02,
            ),
           Container(
              width: context.w * 0.8,
              child: Text(
                "Swithch on your location to stay in tune with what’s happening in your area",
                style: TextStyle(
                    color: ColorConst.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: context.w * 0.035),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.08,
                right: context.w * 0.7,
              ),
              child: Text(
                "Your Zone",
                style: TextStyle(
                  color: ColorConst.grey,
                  fontSize: context.w * .035,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 0.06),
              child: TextFormField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: "Types of your zone",
                  suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.03,
                right: context.w * 0.7,
              ),
              child: Text(
                "Your Area",
                style: TextStyle(
                  color: ColorConst.grey,
                  fontSize: context.w * .035,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 0.06),
              child: TextFormField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: "Types of your area",
                  suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
                ),
              ),
            ),
            SizedBox(
              height: context.h * 0.08,
            ),
            ImageContButton(
              name: "Submit",
              color: ColorConst.green,
              onTap: () {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginInPage();
                }), (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
