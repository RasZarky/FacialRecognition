
import 'package:flutter/material.dart';
import 'home.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  final _idTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();
  String pass1 = '12345';
  String user1 = 'UID12345';
  String pass2 = 'abcdef';
  String user2 = 'UID6789';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            controller: _idTextEditingController,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "User ID",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            controller: _passwordTextEditingController,
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {

                                      String userloginId = _idTextEditingController.text;
                                      String userloginpassword = _passwordTextEditingController.text;

                                      if (userloginId == null || userloginpassword == null){

                                        var snackBar = const SnackBar(
                                          content: Text( "All fields are required",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);

                                      } else if((user1 == userloginId && pass1 == userloginpassword)
                                      || (user2 == userloginId && pass2 == userloginpassword)){

                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) => MyHomePage(),
                                          ),
                                        );

                                      }else {
                                        var snackBar = const SnackBar(
                                          content: Text( "Check details and try again",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        );
                                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      }
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
