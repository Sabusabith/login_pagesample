import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(home: MyAlertBox()));
}

class MyAlertBox extends StatelessWidget {
  const MyAlertBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AlertBox'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Alert(
                        context: context,
                        title: 'alert',
                        desc: 'do you want to exit?')
                    .show();
              },
              child: const Text('show alert')),
        ));
  }
}
