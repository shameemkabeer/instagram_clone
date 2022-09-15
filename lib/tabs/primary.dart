import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/datas/chat_screen_tiles.dart';

class primary extends StatefulWidget {
  const primary({required this.chatdata, Key? key}) : super(key: key);

  final Chats chatdata;

  @override
  State<primary> createState() => _primaryState();
}

class _primaryState extends State<primary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(chatlists[index].avatar),
                ),
                trailing: Icon(Icons.camera_alt_outlined),
                title: Text(
                  chatlists[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    Text(chatlists[index].lastmessage),
                    Text(chatlists[index].time),
                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: chatlists.length,
      ),
    );
  }
}
