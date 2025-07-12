import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.camera_alt_rounded),
      backgroundColor: Colors.lightGreen,
      foregroundColor: Colors.white,
    ),appBar: AppBar(
      title: Text("Updates"),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      actions: [
        Icon(Icons.qr_code_2),
        SizedBox(width: 18),
        Icon(Icons.search_rounded),
        SizedBox(width: 18),
        Icon(Icons.more_vert_rounded),
        SizedBox(width: 18),
      ],
    ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("spidy.jpg"),),
            title: Text("Add status"),
            subtitle: Text("Disappears after 24 hours"),
          ),Text("Recent updates"),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("iornman.jpg")),
            title: Text("Tony Stark"),
            subtitle: Row(
              children: [Text("yesterday"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
