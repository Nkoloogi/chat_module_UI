import 'package:chatt_fonsti/screens/detailedchatview.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // TODO: Define a method to navigate to detailed chat view
  void _navigateToDetailedChatView() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailedChatView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Implement chat list view
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat List'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of chats
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Chat $index'),
            onTap: () {
              // Navigate to detailed chat view for the selected chat
              _navigateToDetailedChatView();
            },
          );
        },
      ),
    );
  }
}
