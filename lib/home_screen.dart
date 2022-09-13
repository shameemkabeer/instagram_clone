import 'package:flutter/material.dart';
import 'package:instagram/chat_page.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => chatscreen()),
                );
              },
              child: Text("chat screen"))
        ],
      ),
    ));
  }
}
