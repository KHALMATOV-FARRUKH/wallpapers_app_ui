import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpapers_app_ui/pages/FavPage.dart';
import 'package:wallpapers_app_ui/pages/HomePage.dart';
import 'package:wallpapers_app_ui/pages/ImagePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  @override
  void initState(){

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomePage(),
        "ImagePage": (context) => ImagePage(),
        "favPage": (context) => FavPage(),
      },
    );
  }
}

