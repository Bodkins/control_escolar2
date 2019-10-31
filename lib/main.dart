
import 'package:flutter/material.dart';

import 'package:control_escolar/model/client_model.dart';

import 'package:control_escolar/db/database.dart';

import 'package:control_escolar/AddGroup.dart';


import 'dart:io';

import 'principalPage.dart';

import 'package:control_escolar/loginPage.dart';



void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Control Escolar',

      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),

      home: MyLoginPage(),
      routes: <String, WidgetBuilder>{
        '/accept': (BuildContext context) => MyHomePage(),
        //'/cancel': (BuildContext context) => principalView(),
      },

    );

  }

}



