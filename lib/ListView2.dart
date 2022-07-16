import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWithBuilder extends StatelessWidget {
  List images = [
    'assets/images/friendship.png',
    'assets/images/paintbucket.png',
    'assets/images/teddy.jpg',
    'assets/images/tomato.png',
  ];
  List names = ['Friends', 'paint', 'teddy', 'tomato'];
  List numbers = ['9645140127', '9061912849', '9744403211', '9645140127'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List.Builder'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
              subtitle: Text(numbers[index]),
              title: Text(names[index]),
              trailing: Column(
                children: const [

                     Text('menu'),
                      Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),

                  ],

              ),
            
            ),
          );
        },
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
