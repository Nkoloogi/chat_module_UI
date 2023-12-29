import 'package:chatt_fonsti/screens/chat_screen.dart';
import 'package:flutter/material.dart';

//stateless widget
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  //build method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatt Fonsti'),
      ),
      //body include children of text and a button
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Chatt Fonsti',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 24),
            //implement a button to route to chat screen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
              child: Text('Go to Chat Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
