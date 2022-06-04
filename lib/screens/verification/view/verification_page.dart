import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
import 'package:nectar_app/screens/log_in/view/components/my_text_widget.dart';
import 'package:nectar_app/screens/log_in/view/components/text_form_field_widget.dart';
import 'package:nectar_app/screens/select_location/view/select_location.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _numberController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: ColorConst.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: "Enter your 4-digit code",
              color: ColorConst.black,
              textSize: context.w * 0.050,
            ),
            SizedBox(
              height: context.h * 0.02,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: context.w * 0.85,
              ),
              child: TextWidget(
                text: "Code",
                color: ColorConst.grey,
                
              ),
            ),
            TFW(
              keybordType: TextInputType.number,
              userPasswordController: _numberController,
             lText:  "__ __ __ __",
            ),
            SizedBox(height: context.h * 0.58
            ,),
            Container(
              height: context.h * 0.08,
              width: context.w * 0.95,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: "Reset code", color: ColorConst.green,),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SelectLocation();
                          },
                        ),
                      );
                    },
                    backgroundColor: ColorConst.green,
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
