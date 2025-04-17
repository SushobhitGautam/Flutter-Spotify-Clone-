import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/UI_Part%20/splash_page.dart';

class AppRoutes{
  static const String splash_page ='/splash';
  static const String intro_page ='/intro';
static Map <String,Widget Function(BuildContext)> getRoutes()=>{
 splash_page:(context)=>SplashPage(),
  //intro_page:(context)=> Intropage
};
}