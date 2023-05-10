import 'package:chat_app/widgets/group_image_chat.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/models/messages_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const GroupChatImage darrenAndLanGroupChatImage = GroupChatImage(
      imageUrls: [
        'assets/images/images3.jpg',
        'assets/images/images4.jpg',
      ],
      imageSize: 40,
    );

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(color: Colors.pink, width: 1.0),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Icon(
                        EvaIcons.options2,
                        size: 20,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chat = chats[index];
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (chat.sender.imageUrl != null)
                      CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage(chat.sender.imageUrl!),
                      ),
                    if (chat.sender.imageUrl == null)
                      GroupChatImage(
                        imageUrls: darrenAndLanGroupChatImage.imageUrls,
                        imageSize: darrenAndLanGroupChatImage.imageSize,
                      ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chat.sender.name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              chat.text,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 6),
                            if (chat.mark != null)
                              Chip(
                                label: Text(chat.mark!,
                                    style: TextStyle(
                                      color: chat.mark == "Help Req."
                                          ? Colors.black
                                          : Colors.white,
                                    )),
                                backgroundColor: chat.mark == "Help Req."
                                    ? Colors.yellow
                                    : chat.mark == "Challenge"
                                        ? Colors.red
                                        : Colors.black38,
                              ),
                            const Divider(
                              height: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      chat.time,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
