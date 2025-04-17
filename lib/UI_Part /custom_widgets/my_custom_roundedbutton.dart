import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomRoundedButton extends StatelessWidget {
  VoidCallback onTap;
  double mWidth;
  double mHeight;
  Color bgColor;
  String text;
  String? mIconPath;
  Color textColor;
  bool isOutlined;
MyCustomRoundedButton({required this.onTap,
  required this.text,
  this.mIconPath,
  this.textColor=Colors.black,
  this.mWidth=300,
  this.mHeight=50,
  this.bgColor=Colors.black,
  this.isOutlined=true,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width:mWidth ,
        height:mHeight ,
         child: mIconPath!=null? Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             SizedBox(width: 15,),
           Image.asset(mIconPath!,width: 25,height: 25,),
             Expanded(child: Center(child: Text(text,style: TextStyle(color:textColor,fontSize: 16),))),
           ],)
             : Expanded(child: Center(child:Text(text,style: TextStyle(color:textColor,fontSize: 16),))),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(25),
           color: isOutlined?Colors.transparent: bgColor,
           border: isOutlined? Border.all(
             width: 1.3,
             color: isOutlined?Colors.white:Colors.transparent
           ):null
         ),
      ),
    );
  }
}
