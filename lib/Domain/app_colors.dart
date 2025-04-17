import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:palette_generator/palette_generator.dart';


class AppColors{
  static const Color primaryColor=Color(0xff1ED760);
  static const Color blackColor=Color(0xff121212);
  static const Color secondaryBlackColor=Color(0xff282828);
  static const Color greyColor=Color(0xff777777);
  static const Color whiteColor=Color(0xffFFFFFF);
}


Future<PaletteGenerator> getColorPalette(String imgPath)async{
  return await PaletteGenerator.fromImageProvider(
    AssetImage(imgPath),
  );

}
