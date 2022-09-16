import 'package:flutter/material.dart';
import 'package:instagram/chat_page.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Colors.black, width: 0.1)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'asset/ins.png',
          height: 45,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 0.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box_outlined,
                  size: 30,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: .0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => chatscreen(),
                  ));
                },
                icon: Icon(
                  Icons.send,
                  size: 30,
                  color: Colors.black,
                )),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: _onItemTapped,
        currentIndex: selected_index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.movie,
                color: Colors.black,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: "")
        ],
      ),
      body: Container(
        height: 100,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                      child: Image.asset(
                    "asset/cropround.jpg",
                    scale: 6,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0, left: 6),
                  child: Container(
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "asset/elonmusk.jpg",
                          scale: 8,
                        )),
                  ),
                )
              ],
            ),
            Container(
                child: Image.asset(
              "asset/cropround.jpg",
              scale: 6,
            )),
            Container(
                child: Image.asset(
              "asset/cropround.jpg",
              scale: 6,
            )),
            Container(
                child: Image.asset(
              "asset/cropround.jpg",
              scale: 6,
            )),
            Container(
                child: Image.asset(
              "asset/cropround.jpg",
              scale: 6,
            )),
            Container(
                child: Image.asset(
              "asset/cropround.jpg",
              scale: 6,
            ))
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selected_index = index;
    });
  }
}
