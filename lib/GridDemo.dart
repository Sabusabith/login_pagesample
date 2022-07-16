import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridConstruct extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridConstructState();
}

class GridConstructState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grid View',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: const [
          Card(child: Image(image: AssetImage('assets/images/orange.png'))),
          Card(child: Image(image: AssetImage('assets/images/orange.png'))),
          Card(child: Image(image: AssetImage('assets/images/orange.png'))),
          Card(child: Image(image: AssetImage('assets/images/orange.png'))),
          Card(child: Image(image: AssetImage('assets/images/orange.png'))),
          Text('Orange'),
          Text('Orange'),
          Text('Orange'),
          Text('Orange'),
          Text('Orange')
        ],
      ),
    );
  }
}
