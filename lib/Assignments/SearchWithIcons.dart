import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp( debugShowCheckedModeBanner: false, home: SearchWithIcon()));

}

class SearchWithIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       leading: IconButton(
         icon: Icon(Icons.menu),
         onPressed: () {},
       ),
       title: Text('Search WithIcons'),
       //centerTitle: true,
       backgroundColor: Colors.blue[300],
       actions: const <Widget>[
         Icon(Icons.search),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Icon(Icons.supervised_user_circle),
         ),
         Padding(
           padding: EdgeInsets.only(right: 20),
           child: Icon(Icons.more_vert),
         ),
       ],
     ),   );
  }
}