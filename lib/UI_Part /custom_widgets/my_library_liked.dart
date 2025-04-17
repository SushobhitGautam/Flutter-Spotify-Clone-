import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLibraryLiked extends StatelessWidget {
  String mBackgroundImg="";
  String mImgSymbol="";
  Color? mSolidColor;
  String mTitle;
  String mSubTitle;
  bool wantPinSymbol;

  MyLibraryLiked({super.key, required this.mBackgroundImg,
   required this.mImgSymbol,
   this.mSolidColor,
     required this.mTitle,
     required this.mSubTitle,
    this.wantPinSymbol=true,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: Container(
          color: (mSolidColor!=null)?mSolidColor:Colors.transparent,
          width: 70,
          height: 60,
          child:  (mSolidColor!=null)?Container(
            color: mSolidColor,
            child:  Align(
              alignment: Alignment.center,
              child: Image.asset(mImgSymbol, width: 23, height: 23),
            ),
          ):Stack(children: [
              Image.asset(mBackgroundImg,width: 80,
                height: 60,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(mImgSymbol, width: 23, height: 23),
              )
            ],),

        ),
      ),
      title: Text(mTitle,style: TextStyle(fontSize: 20,color: Colors.white),),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          wantPinSymbol ? Image.asset('assets/dashBoard/pin.png', width: 12, height: 15)
              : SizedBox(width: 0,),
          Text(mSubTitle,style: TextStyle(fontSize: 15,color: Colors.grey.shade700),),
        ],
      )
    );
  }
}
