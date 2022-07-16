import 'package:flutter/material.dart';
import 'package:login_pagesample/FinalPage.dart';
import 'package:login_pagesample/LoginPagedemo.dart';
import 'FinalPage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MaterialApp(home: Splash_screen()));
}

class Splash_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Splashscreenstate();


}

class Splashscreenstate extends State {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: LoginPagedemo(),
    );
  }
}




