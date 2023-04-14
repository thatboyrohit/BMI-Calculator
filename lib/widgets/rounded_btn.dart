import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RoundedButton extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;
    RoundedButton({  this.textStyle,
      this.bgcolor = Colors.blue,
      required this.btnName,
      this.icon,
      this.callBack}
        );
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      callBack!();
    }, child: Icon!=null ? Row(
      children: [
        icon!,
        Container(width:11
          ,),
        Text(btnName,style: textStyle,)
      ],

    ): Text(btnName,style: textStyle,),

    style: ElevatedButton.styleFrom(
        primary: bgcolor,
      shadowColor: bgcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(21),
              bottomRight: Radius.circular(21),
          topLeft: Radius.circular(21),
          bottomLeft: Radius.circular(21),
        )
      )
    ),);
  }

}