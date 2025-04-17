import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_colors.dart';

InputDecoration getCreateAccTextFieldDecoration(){
  return InputDecoration(

filled: true,
fillColor: AppColors.greyColor,
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(11),
),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(11),
borderSide: BorderSide(
color: AppColors.primaryColor,
width: 2,
)
),
);
}
InputDecoration getSearchArtistTextFieldDecoration({IconData mIcon=Icons.search_sharp,
  Color bgColor=Colors.white,
  String mText='Search'}){
  return InputDecoration(
    filled: true,
    hintText: mText,
    hintStyle: TextStyle(color: AppColors.secondaryBlackColor),
    prefixIcon: Icon(mIcon),
    fillColor: bgColor,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(11),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(11),
    )
  );
}
