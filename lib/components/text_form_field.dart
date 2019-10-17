import 'package:flutter/material.dart';

class TextFormFieldSign extends StatelessWidget {
  final bool obscure;
  final String hint;
  final IconData suffixIcon;
  final IconData prefixIcon;
   

  TextFormFieldSign(
      {this.obscure, this.hint, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        
        obscureText: obscure,
        decoration: InputDecoration(
         
          labelText: hint,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(suffixIcon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
