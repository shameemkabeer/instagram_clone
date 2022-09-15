import 'package:flutter/material.dart';
import 'package:instagram/datas/calls.dart';
import 'package:instagram/datas/chat_screen_tiles.dart';

class calls extends StatelessWidget {
  const calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage: NetworkImage(chatlists[index].avatar),
                    ),
                    title: Text(calllists[index].name),
                    subtitle: Text(calllists[index].lastname),
                    trailing: Icon(
                      Icons.call,
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: chatlists.length));
  }
}
