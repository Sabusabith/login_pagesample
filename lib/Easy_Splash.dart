import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:login_pagesample/Drawer/NavigationDrawer.dart';
import 'package:login_pagesample/GridDemo.dart';
import 'package:login_pagesample/GridWithBuilder.dart';
import 'package:login_pagesample/ListView2.dart';
import 'package:login_pagesample/LoginPagedemo.dart';
import 'package:login_pagesample/main.dart';
import 'FinalPage.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
      title: const Text(
        "Welcome",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator:  LoginPagedemo(),
      durationInSeconds: 5,
    );
  }
}

