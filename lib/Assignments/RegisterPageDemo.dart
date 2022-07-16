import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(home: RegisterPage()));
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Container(
        color: Colors.white10,
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50,bottom: 30,right: 120,left: 120),
            child: Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Register', style: TextStyle(fontSize: 20)),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.contacts,
                          color: Colors.red,
                        ),
                        hintText: 'Full Name',
                        label: Text('Full name',
                            style: TextStyle(color: Colors.red))),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        hintText: 'Email',
                        label: Text('Email')),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.key,
                        ),
                        hintText: 'Password',
                        label: Text('Password')),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        hintText: 'Confirm Password',
                        label: Text('Confirm Password')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 40,
                      width: 150,
                      child: ElevatedButton(
                        child: Text("Register",style: TextStyle(fontSize: 30),),
                        onPressed: () => print("it's pressed"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('Already register?'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
