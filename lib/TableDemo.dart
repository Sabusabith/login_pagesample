import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyTable()));
}

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Table Demo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          const Center(
            child: Text(
              'Table Demo',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: DataTable(
              columnSpacing: 200,
              decoration:
                  BoxDecoration(border: Border.all(), color: Colors.grey),
              columns: const [
                DataColumn(label: Text('Id')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Proffesion'))
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('zaab')),
                  DataCell(Text('Doctor')),
                ]),
                DataRow(cells: [
                  DataCell(Text('2')),
                  DataCell(Text('Faris')),
                  DataCell(Text('Driver')),
                ]),
                DataRow(cells: [
                  DataCell(Text('3')),
                  DataCell(Text('John')),
                  DataCell(Text('Engineer')),
                ])
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
