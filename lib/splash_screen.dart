import 'package:flutter/material.dart';
import 'package:instagram/login_screen.dart';

class Screensplash extends StatefulWidget {
  const Screensplash({Key? key}) : super(key: key);

  @override
  State<Screensplash> createState() => _ScreensplashState();
}

class _ScreensplashState extends State<Screensplash> {
  @override
  void initState() {
    loginscreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black87,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Image.network(
                  "https://img.icons8.com/3d-fluency/344/instagram-new.png",
                  height: 100.0,
                  width: 100.0,
                ),
                SizedBox(
                  height: 380,
                ),
                Text(
                  "from",
                  style: TextStyle(color: Colors.black54),
                ),
                Text(
                  "Proxima Centauri",
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> loginscreen() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => login(),
      ),
    );
  }
}
