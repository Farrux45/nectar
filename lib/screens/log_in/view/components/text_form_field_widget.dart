import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nectar_app/core/extension/extension_page.dart';

class TFW extends StatefulWidget {
  final String? lText;
  final String? hText;
  final keybordType;
  TextEditingController? userPasswordController;
  var obsecureText;
  var icon;

  TFW({
    Key? key,
    this.lText,
    this.hText,
    required this.keybordType,
    required this.userPasswordController,
    this.obsecureText,
    this.icon,
  }) : super(key: key);

  @override
  State<TFW> createState() => _TFWState();
}

bool _passwordVisible = false;

class _TFWState extends State<TFW> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.w * 0.06,),
      child: TextFormField(
        onEditingComplete: () => FocusScope.of(context).nextFocus(),
        keyboardType: widget.keybordType,
        controller: widget.userPasswordController,
        obscureText:
            widget.obsecureText != null ? !_passwordVisible : _passwordVisible,
        decoration: InputDecoration(
            labelText: widget.lText ?? " ",
            hintText: widget.hText ?? " ",
            suffixIcon: widget.obsecureText != null
                ? IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          _passwordVisible = !_passwordVisible;
                        },
                      );
                    },
                  )
                : null),
      ),
    );
  }
}
