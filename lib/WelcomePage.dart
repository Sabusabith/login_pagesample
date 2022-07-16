import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Welcompage()));
}

class Welcompage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset('assets/images/room.jpg'),
            Positioned(
              top: 200,
              left: 50,
              child: ElevatedButton(onPressed: () {}, child: Text('Login')),
            ),
            Positioned(
              top: 300,
              left: 120,
              child: ElevatedButton(onPressed: () {}, child: Text('Login')),
            )
          ],
        ),
      ),
    );
  }
}
