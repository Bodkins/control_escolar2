import 'package:control_escolar/db/moor_database.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'principalPage.dart';

import 'package:control_escolar/loginPage.dart';

import 'package:control_escolar/signUpPage.dart';

import 'package:control_escolar/studentsPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
        builder: (_) => AppDatabase(),
        child: MaterialApp(
          title: 'Control Escolar',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyLoginPage(),
          routes: <String, WidgetBuilder>{
            '/accept': (BuildContext context) => MyHomePage(),
            '/signUp': (BuildContext context) => SignUpPage(),
            '/loginPage': (BuildContext context) => MyLoginPage(),
            '/studentsPage': (BuildContext context) => StudentsPage(),
            //'/cancel': (BuildContext context) => principalView(),
          },
        )
    );
  }
}
