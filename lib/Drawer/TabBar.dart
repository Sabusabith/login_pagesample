import 'package:flutter/material.dart';
import 'package:login_pagesample/FinalPage.dart';
import 'package:login_pagesample/GridDemo.dart';
import 'package:login_pagesample/GridWithBuilder.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyTabBar(),
  ));
}

class MyTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTabBarState();
}

class MyTabBarState extends State {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.green,
            title:const  Text('Watsapp Clone'),
            bottom:const TabBar(
              tabs: [
              Text('Chat'),
              Text('Status'),
              Text('Calls')
            ],),
          ),
          body: TabBarView(children: [
           Center(child: Text('Chat',),),
            Center(child: Text('Status')),
            Center(child: Text('Calls'))
          ],),
        ));
  }
}
