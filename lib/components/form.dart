import 'package:jazebeh/components/text_form_field.dart';
import 'package:flutter/material.dart';

class FormSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: new Column(
          children: <Widget>[
            new TextFormFieldSign(
              hint: "نام کاربری",
              obscure: false,
              prefixIcon: Icons.account_circle,
            ),
            SizedBox(height: 8,),
            new TextFormFieldSign(
              hint: 'رمزعبور',
              obscure: true,
              suffixIcon: Icons.remove_red_eye,
              prefixIcon: Icons.lock_outline,
              //icon: Icons.lock_outline,
            )
          ],
        ),
      ),
    );
  }
}