import 'package:flutter/material.dart';
import 'package:spotify_clone/Domain/app_routes.dart';

import 'UI_Part /splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'avenir',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    home: SplashPage(),

    );
  }
}
