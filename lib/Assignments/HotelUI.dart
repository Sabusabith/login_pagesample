import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HotelUi()));
}

class HotelUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(220.0),
        child: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_outline_rounded)),
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            title: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 90),
                    child: Text('Type your Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 200, right: 200),
                    child: ListTile(
                        tileColor: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        leading: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search)),
                    title: Text('Valanchery,Malappuram', style: TextStyle(color: Colors.grey),),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                  child: Column(
                    children: const [
                      SizedBox(height: 20),
                      Icon(
                        Icons.hotel,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hotel',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueAccent,
                  child: Column(
                    children: const [
                      SizedBox(height: 20),
                      Icon(
                        Icons.restaurant,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Restaurent',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                  child: Column(
                    children: const [
                      SizedBox(height: 20),
                      Icon(
                        Icons.local_cafe_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Cafe',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(image:DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/hotel.jpg'),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
