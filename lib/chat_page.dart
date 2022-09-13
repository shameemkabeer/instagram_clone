import 'package:flutter/material.dart';
import 'package:instagram/datas/chat_screen_tiles.dart';
import 'package:instagram/tabs/primary.dart';

class chatscreen extends StatefulWidget {
  const chatscreen({Key? key}) : super(key: key);

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black54,
              )),
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                "insta_man",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.expand_more,
                  color: Colors.black54,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 5,
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.black,
                )),
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            controller: _tabController,
            tabs: [
              Tab(text: "Primary"),
              Tab(
                text: "General",
              ),
              Tab(
                text: "Requests",
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            primary(chatdata: chatlists.first),
            Tab(
              child: Text("data"),
            ),
            Tab(
              child: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
