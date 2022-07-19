import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HotelUi()));

}

class HotelUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 1.0,
                color: Colors.lightBlueAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Type Your Location",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * .9,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "Eranakulam, Kakkanad",
                              prefixIcon: Icon(Icons.search),
                            ),
                          )),
                    ),
                  ],
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    color: Colors.pinkAccent,
                    width: 90,
                    height: 90,
                    child:Card(color: Colors.pinkAccent,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.hotel,color: Colors.white,),
                          Text('Hotel',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ) ,
                  ),

                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    color: Colors.pinkAccent,
                    width: 90,
                    height: 90,
                    child:Card(color: Colors.pinkAccent,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.restaurant,color: Colors.white,),
                          Text('Restaurant',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ) ,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    color: Colors.pinkAccent,
                    width: 90,
                    height: 90,
                    child:Card(color: Colors.pinkAccent,
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.local_cafe,color: Colors.white,),
                          Text('Cafe',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ) ,
                  ),
                ),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              width: 400,
              height: 350,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image(image: AssetImage('assets/images/room.jpg'),fit: BoxFit.fill,),

                      Positioned(right: 1,
                        child: IconButton(onPressed: (){}, icon: Icon(Icons.star_border_purple500_sharp)),
                      ),
                      Positioned(
                          right: 5,
                          bottom: 8,
                          child: Container(height: 20,width: 30,alignment: Alignment.center,
                            color: Colors.white.withOpacity(0.8),
                            child: const Text("\$40"),
                          ))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 240,top: 10),
                    child: Text('Beautiful Room',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,right: 260),
                    child: Text('Kakkanad,Kochi',style: TextStyle(fontSize: 15,color: Colors.black87),),
                  )
                ],
              ),

            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: 400,
            height: 350,
            child: Column(
              children: [
                Stack(
                  children: [
                    Image(image: NetworkImage('https://cdn.pixabay.com/photo/2016/11/14/02/28/apartment-1822409_960_720.jpg'),fit: BoxFit.fill,),

                    Positioned(right: 1,
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.star_border_purple500_sharp)),
                    ),
                    Positioned(
                        right: 5,
                        bottom: 8,
                        child: Container(height: 20,width: 30,alignment: Alignment.center,
                          color: Colors.white.withOpacity(0.8),
                          child: const Text("\$30"),
                        ))
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 240,top: 10),
                  child: Text('Beautiful Room',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5,right: 260),
                  child: Text('Kakkanad,Kochi',style: TextStyle(fontSize: 15,color: Colors.black87),),
                )
              ],
            ),

          ),
        ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 400,
                height: 350,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image(image: NetworkImage('https://cdn.pixabay.com/photo/2018/06/14/21/15/bedroom-3475656__340.jpg'),fit: BoxFit.fill,),

                        Positioned(right: 1,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.star_border_purple500_sharp)),
                        ),
                        Positioned(
                            right: 5,
                            bottom: 8,
                            child: Container(height: 20,width: 30,alignment: Alignment.center,
                              color: Colors.white.withOpacity(0.8),
                              child: const Text("\$50"),
                            ))
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 240,top: 10),
                      child: Text('Beautiful Room',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5,right: 260),
                      child: Text('Kakkanad,Kochi',style: TextStyle(fontSize: 15,color: Colors.black87),),
                    )
                  ],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 400,
                height: 350,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image(image: NetworkImage('https://cdn.pixabay.com/photo/2017/04/28/22/16/room-2269594_960_720.jpg'),fit: BoxFit.fill,),

                        Positioned(right: 1,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.star_border_purple500_sharp)),
                        ),
                        Positioned(
                            right: 5,
                            bottom: 8,
                            child: Container(height: 20,width: 30,alignment: Alignment.center,
                              color: Colors.white.withOpacity(0.8),
                              child: const Text("\$60"),
                            ))
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 240,top: 10),
                      child: Text('Beautiful Room',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5,right: 260),
                      child: Text('Kakkanad,Kochi',style: TextStyle(fontSize: 15,color: Colors.black87),),
                    )
                  ],
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
