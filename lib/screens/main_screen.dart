import 'package:flutter/material.dart';
import 'package:chat_app/screens/chat_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            selectedItemColor: Colors.pink,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chats",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notification",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: "More",
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: MediaQuery.of(context).size.width / 3 * _selectedIndex,
            child: Container(
              height: 2,
              width: MediaQuery.of(context).size.width / 3,
              color: Colors.pink,
            ),
          ),
        ],
      ),
      body: const ChatScreen(),
    );
  }
}
