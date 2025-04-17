import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_colors.dart';
import 'package:spotify_clone/UI_Part%20/intro_page.dart';
import 'package:spotify_clone/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  double mWidth=140;
  double mHeight=140;

  @override
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>IntroPage()));
    });
  animate();
  }
  void animate(){
    mWidth=150;
    mHeight=150;
    setState(() {});
  }
  Widget build(BuildContext context) {
    return Scaffold(

backgroundColor: Colors.black45,
      body: Center(
 child: Container(
   width: mWidth,
   height:mHeight,
     child: Image.asset('assets/logo/spotify Background Removed.png',width: mWidth,height: mHeight,)
 ),
      ),
    );
  }
}
