import 'dart:io';

import 'package:face_net_authentication/pages/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class Profile extends StatelessWidget {
  const Profile(this.username, {
    Key? key,
    required this.imagePath, required this.programme, required this.indexNumber,
    required this.registration, required this.level
  })
      : super(key: key);
  final String username;
  final String programme;
  final String indexNumber;
  final String registration;
  final String level;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: FileImage(File(imagePath)),
                  ),
                ),
                margin: EdgeInsets.all(20),
                width: 200,
                height: 200,
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFEFFC1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.warning_amber_outlined,
                      size: 30,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      username,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      indexNumber,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      programme,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Level '+level,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      registration,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400,
                      color: Colors.deepOrangeAccent),
                      textAlign: TextAlign.center,
                    ),
                    Divider(
                      height: 30,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.1),
                              blurRadius: 1,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DONE',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            // FaIcon(
                            //   FontAwesomeIcons.github,
                            //   color: Colors.white,
                            // )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              AppButton(
                text: "GO HOME",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                color: Color(0xFFFF6161),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
