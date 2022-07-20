import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: WithTabBar(),));
}
class WithTabBar extends StatefulWidget {
  const WithTabBar({Key? key}) : super(key: key);

  @override
  _WithTabBarState createState() => _WithTabBarState();
}

class _WithTabBarState extends State<WithTabBar> {
  int _selectedIndex = 0;

  static  List<Widget> _pages = <Widget>[
    CallsPage(),
    Container(width: 1200,
      height: 800,
      color: Colors.black,

      child: Center(
        child: Icon(
          Icons.camera,color: Colors.white,
          size: 150,
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(0),
      child: Container(width: 1200,
        height: 800,
        color: Colors.black,
        child: TextField(
          decoration: InputDecoration(fillColor: Colors.white,
              filled: true,
              labelText: 'Find contact',
              labelStyle: TextStyle(fontWeight: FontWeight.bold,)),
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text('With TabBar Demo',style: TextStyle(color: Colors.white),),
        elevation: 0,
      ),
      body:
      IndexedStack(
        children: _pages,
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call,color: Colors.white,),
            label: 'Calls',backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera,color: Colors.white,),
            label: 'Camera',backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Colors.white,),
            label: 'Chats',backgroundColor: Colors.white
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class CallsPage extends StatelessWidget {
  const CallsPage();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
            bottom:

              TabBar(
                tabs: [
                  Tab(
                    text: 'Incoming',
                  ),
                  Tab(
                    text: 'Outgoing',
                  ),
                  Tab(
                    text: 'Missed',
                  ),
                ],
              )


        ),
        body: TabBarView(
          children: [
            IncomingPage(),
            OutgoingPage(),
            MissedPage(),
          ],
        ),
      ),
    );
  }
}

class IncomingPage extends StatefulWidget {
  @override
  _IncomingPageState createState() => _IncomingPageState();
}

class _IncomingPageState extends State<IncomingPage>
    with AutomaticKeepAliveClientMixin<IncomingPage> {
  int count = 10;

  void clear() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.call_received, size: 350,color: Colors.white,),
            // Text('Total incoming calls: $count',
            //     style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: clear,
      //   child: Icon(Icons.clear_all),
      // ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class OutgoingPage extends StatefulWidget {
  @override
  _OutgoingPageState createState() => _OutgoingPageState();
}

class _OutgoingPageState extends State<OutgoingPage>
    with AutomaticKeepAliveClientMixin<OutgoingPage> {
  final items = List<String>.generate(10000, (i) => "Call $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        //child: Icon(Icons.call_made_outlined, size: 350),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}',style: TextStyle(color: Colors.white),),
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class MissedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
         body:
        Center(child: Icon(Icons.call_missed_outgoing, size: 350,color: Colors.white,)));
  }
}