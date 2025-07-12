import 'package:flutter/material.dart';
class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Communities"),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      actions: [
        Icon(Icons.qr_code_2),
        SizedBox(width: 18),
        Icon(Icons.more_vert_rounded),
        SizedBox(width: 18),
      ],
    ),);
  }
}
