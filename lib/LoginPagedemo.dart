import 'package:flutter/material.dart';
import 'package:login_pagesample/FinalPage.dart';

 class LoginPagedemo extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Card(
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 30)),
              const Center(
                child: Text(
                  'Flutter Login',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(right: 300, left: 300, top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email"),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(right: 300, left: 300, top: 20, bottom: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      helperText: "Password must have 6 charecters"),
                ),
              ),
              SizedBox(
                child: Container(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          print('clicked');
                        },
                        child: Text('Login'))),
              ),
              const SizedBox(
                height: 200,
              ),
              TextButton(onPressed: () {print('clicked');}, child: Text('not a user? register..'))
            ],
          ),
        ),
      ),
    );
  }
}
