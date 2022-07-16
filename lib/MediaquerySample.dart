import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LottieSample()));
}

class LottieSample  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text('Lottie'),
   ),
   body: Center(
     child: ListView(
       children: [
             Lottie.network('https://assets8.lottiefiles.com/packages/lf20_HX0isy.json')
       ],
     ),
   ),
 );
  }
}