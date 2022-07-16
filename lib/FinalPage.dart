import 'package:flutter/material.dart';
import 'package:login_pagesample/FinalPage.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

void main() {
  runApp(Final_Page());
}

class Final_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LastPage'),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Center(
                child: Text(
              'List Of Fruits',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                  fontSize: 20),
            )),
          ),
          Card(
            color: Colors.grey,
            child: ListTile(
              leading: Icon(Icons.apple,color: Colors.green,),
              title: Text('Apple'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Orange'),
          ),
          ListTile(
            title: Text('Banana'),
          ),
          ListTile(
            title: Text('Grape'),
          ),
          ListTile(
            title: Text('Pinapple'),
          ),
          ListTile(
            title: Text('Mango'),
          ),
        ],
      ),
    );
  }
}
