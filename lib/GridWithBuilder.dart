import 'package:flutter/material.dart';

class GridBuilder extends StatelessWidget {
  List<Map> products =
      List.generate(50, (index) => {'id': index, 'name': 'products'}).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridWithBuilder'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (BuildContext obj, index) {
            return Card(
              child: Center(
                child: Text(products[index]['name']),
              ),
            );
          }),
    );
  }
}
