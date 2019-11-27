import 'package:control_escolar/db/moor_database.dart';
import 'package:control_escolar/helpPage.dart';
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
<<<<<<< Updated upstream
        builder: (_) => AppDatabase().queriesDao,
=======
        builder: (_) => AppDatabase(),
>>>>>>> Stashed changes
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
            '/helpPage': (BuildContext context) => MyHelpPage(),
            //'/cancel': (BuildContext context) => principalView(),
          },
        )
    );
  }
}
