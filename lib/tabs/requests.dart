import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class requests extends StatelessWidget {
  const requests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Message requests",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: Column(
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text(
              "Open a chat to get more info about it untill you accept.",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            ),
            Text("who's messaging you.They won't know you've seen",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
            Text("it untill you accept.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
            Center(
              child: TextButton(
                  onPressed: () {}, child: Text("Decide who can message you")),
            ),
            Divider(
              height: 5,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(8)),
                Padding(padding: EdgeInsets.only(top: 70)),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black26,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://icons.veryicon.com/png/o/miscellaneous/linear-icon-25/password-not-visible-3.png"),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20)),
                Text(
                  "Hidden Requests",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Padding(padding: EdgeInsets.only(left: 102)),
                Text(
                  "0",
                  style: TextStyle(color: Colors.black54),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.black54,
                    ))
              ],
            )
          ],
        ));
  }
}
