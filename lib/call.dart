import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_ic_call),
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      appBar: AppBar(
        title: Text("Calls"),
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
          SizedBox(height: 10, width: 50),
          Text("Favorites", style: TextStyle(fontSize: 20)),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(CupertinoIcons.heart_circle_fill),
            ),
            title: Text("Add favorite"),
          ),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("batman.jpg")),
            title: Text("Bruce Banner"),
            subtitle: Row(
              children: [
                Icon(CupertinoIcons.arrow_up_right, color: Colors.green),
                Text("yesterday 10:00 pm"),
              ],
            ),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
