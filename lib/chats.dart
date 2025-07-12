import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add_comment_rounded),
      backgroundColor: Colors.lightGreen,
    ),appBar: AppBar(
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
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("barry.jpg"),),
            title: Text("Barry Allen"),
            subtitle: Text("Hey"),
            trailing
            :Text("yesterday"),
          ),
        ],
      ),

    );
  }
}
