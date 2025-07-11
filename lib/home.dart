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
      appBar: AppBar(
        title: Text("Whatsapp"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.qr_code_2),
          SizedBox(width: 18),
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 18),
          Icon(Icons.more_vert_rounded),
          SizedBox(width: 18),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_comment_rounded),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,showUnselectedLabels: true,
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
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "call",),
        ],
      ),
    );
  }
}
