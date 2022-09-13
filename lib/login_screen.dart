import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/home_screen.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _errormessage = "Username Password does not Match";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Text(
                          "Instagram",
                          style: GoogleFonts.combo(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 40),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextField(
                            controller: _usernamecontroller,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Phone number, Username or email")),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility),
                                color: Colors.black54,
                              )),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            logincheck(context);
                          },
                          child: Text("Log in",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          style: ButtonStyle(
                              minimumSize:
                                  MaterialStateProperty.all(Size(350, 40))),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.all(12.0)),
                            Text(
                              "Forgot your login details?",
                              style: TextStyle(color: Colors.black45),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              "Get help logging in.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "OR",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Log in with Facebook",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100)),
                    Text("Dont have an account?"),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void logincheck(BuildContext context) {
    final _username = _usernamecontroller.text;
    final _password = _passwordcontroller.text;

    if (_username == _password) {
      //go to home
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => homescreen(),
        ),
      );
    } else {
      //snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_errormessage),
        ),
      );
    }
  }
}
