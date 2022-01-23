import 'package:flutter/material.dart';

class chat_window extends StatelessWidget {
  const chat_window({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Sid"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
