import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:chat_app/models/messages_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromARGB(255, 25, 1, 65),
        elevation: 20,
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/images1.jpg'),
            radius: 10,
          ),
        ),
        title: const Center(
          child: Text(
            'Chat',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            iconSize: 25,
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
