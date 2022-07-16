import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BottamNavBar()));
}

class BottamNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottamNavBarState();
}

class BottamNavBarState extends State {
  int selected_intex = 0;

  List page = const <Widget>[
    Icon(
      Icons.home,
      size: 200,
    ),
    Icon(
      Icons.settings,
      size: 200,
    ),
    Icon(
      Icons.chat,
      size: 200,
    ),
  ];

  void onItemTap(int index) {
    //user defined function
    setState(() {
      //built in function
      selected_intex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation bar'),
      ),
      body: Center(
        child: page.elementAt(selected_intex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',tooltip:'home' ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings',tooltip:'settings'),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chat",tooltip: 'chat')
        ],
        currentIndex: selected_intex,
        onTap: onItemTap,
      ),
    );
  }
}
