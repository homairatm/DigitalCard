import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get width => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white38,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('images/reduts.jpg'),
                  ),
                  Text(
                    'RedUts Creations',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Website and App Development Company',
                    style: TextStyle(
                      fontFamily: 'JosefinSans',
                      fontSize: 20.0,
                      color: Colors.teal.shade50,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.normal,

                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                    width: 300.0,
                    child: Divider(
                      color: Colors.teal.shade50,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade900,
                      ),
                      title: Text(
                        '8 2 1 7',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'JosefinSans',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal.shade900,
                      ),

                      title: Text(
                        'reduts_creations@gmail.com',
                        style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'JosefinSans',
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 50.0),
                    child: ListTile(
                        leading: Icon(
                          Icons.web,
                          color: Colors.teal.shade900,
                        ),
                        title: Text(
                          'reduts_creations.com',
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'JosefinSans',
                            fontSize: 20.0,
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),

        )
    );
  }
}
