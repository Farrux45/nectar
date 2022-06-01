import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/constants/color_const.dart';
import 'package:nectar_app/core/extension/extension_page.dart';
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.04,
                right: context.w * 0.09,
              ),
              child: Text(
                "Enter your 4-digit code",
                style: TextStyle(
                  color: ColorConst.black,
                  fontSize: context.w * 0.07,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: context.h * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: context.w * 0.78,
              ),
              child: Text(
                "Code",
                style: TextStyle(
                  color: ColorConst.grey,
                  fontSize: context.w * 0.04,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.w * 0.06),
              child: TextFormField(
                controller: _numberController,
                decoration: InputDecoration(
                  hintText: "__ __ __ __",
                  fillColor: ColorConst.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.6,
                left: context.w * 0.03,
                right: context.w * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Reset code",
                    style: TextStyle(
                      color: ColorConst.green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
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
