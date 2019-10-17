import 'package:flutter/material.dart';

class FultBtn extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function onPressed;
  final Widget child;
  final IconData iconData;

  FultBtn({this.onPressed,this.iconData,this.child, this.color, this.textColor, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(

        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        child: child,
        onPressed: (){
          onPressed();
        },
        textColor: textColor,
        color: color,

      ),
    );
  }
}
