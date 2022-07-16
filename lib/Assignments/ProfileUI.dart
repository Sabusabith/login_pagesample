import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyProfile()));
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile UI'),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/images/julian.jpg'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/fb.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/google.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/twitter.png'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/linkedin.png'),
                  ),
                )
              ],
            ),
            const Text(
              'Chromicle',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100,left: 100,top: 20),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.security,color: Colors.black),
                  title: Text('Privacy'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100,left: 100,top: 20),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.history,color: Colors.black),
                  title: Text('Purchase History'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100,left: 100,top: 20),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.help,color: Colors.black),
                  title: Text('Help & Support'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 100,left: 100,top: 20),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.settings,color: Colors.black),
                  title: Text('Settings'),
                  trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
