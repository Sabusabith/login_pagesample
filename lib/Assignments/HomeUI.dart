import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_pagesample/Assignments/ContyainerPage.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeUI()));
}

class HomeUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeUIState();
}

class HomeUIState extends State {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Colors.white60,
            leading: Icon(
              Icons.category,
              color: Colors.black,
            ),
            title: Center(
                child: Text(
              'Categories',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ))
            ],
            bottom: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: 'For You'),
                  Tab(text: 'Design'),
                  Tab(text: 'Beauty'),
                  Tab(text: 'Education')
                ]),
          ),
        ),
        body: IndexedStack(
             children: [ContainerUI(),

             ],
            index: _selectedIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              label: 'Folder',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.settings),
            //   label: 'Settings',
            // ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
   List _pages = [
    ContainerUI(),
  ];
}
