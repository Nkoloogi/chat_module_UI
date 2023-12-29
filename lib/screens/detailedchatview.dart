import 'package:flutter/material.dart';

class DetailedChatView extends StatefulWidget {
  @override
  _DetailedChatViewState createState() => _DetailedChatViewState();
}

class _DetailedChatViewState extends State<DetailedChatView> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
        actions: [
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {
              // Implement voice call logic
            },
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              // Implement video call logic
            },
          ),
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle the selected option
              if (value == 'clearChat') {
                // Implement logic to clear the chat
              } else if (value == 'muteNotifications') {
                // Implement logic to mute notifications
              } else if (value == 'blockUser') {
                // Implement logic to block the user
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'clearChat',
                child: ListTile(
                  leading: Icon(Icons.delete),
                  title: Text('Clear Chat'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'muteNotifications',
                child: ListTile(
                  leading: Icon(Icons.volume_off),
                  title: Text('Mute Notifications'),
                ),
              ),
              PopupMenuItem<String>(
                value: 'blockUser',
                child: ListTile(
                  leading: Icon(Icons.block),
                  title: Text('Block User'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          // Implement the chat messages display area
          Expanded(
            child: Container(
                // Implement your chat messages here
                ),
          ),
          // Implement the input area for sending messages
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.attach_file),
                  onPressed: () {
                    // Implement document exchange logic
                  },
                ),
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Type your message...',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Implement the logic for sending messages
                  },
                  icon: const Icon(Icons.send),
                ),
                IconButton(
                  onPressed: () {
                    // Implement the logic for microphone
                  },
                  icon: const Icon(Icons.mic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
