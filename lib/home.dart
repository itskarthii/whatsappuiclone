import 'package:flutter/material.dart';
import 'package:whatsappuiclone/call.dart';
import 'package:whatsappuiclone/chats.dart';
import 'package:whatsappuiclone/communities.dart';
import 'package:whatsappuiclone/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [Chats(), Updates(), Communities(), Call()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "chats",
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update_outlined),
            label: "updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_sharp),
            label: "communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call"),
        ],
      ),
      body: pages[index],
    );
  }
}
