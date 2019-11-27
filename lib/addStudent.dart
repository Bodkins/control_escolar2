import 'package:control_escolar/db/moor_database.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

//import 'package:control_escolar/db/database.dart';



class AddStudent extends StatefulWidget {
  @override
  _AddStudentState createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {

  TextEditingController nameStudentEditingController = TextEditingController();
  TextEditingController nameAdvisorEditingController = TextEditingController();
  TextEditingController emailStudentEditingController = TextEditingController();
  TextEditingController emailAdvisorEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 170, 51, 1),
        title: Text('Nuevo grupo'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 300,
                ),
                textFormField(
                  nameStudentEditingController,
                  "Nombre del estudiante",
                  "Introduzca el nombre del estudiante",
                  Icons.face,
                ),
                textFormField(
                  emailStudentEditingController,
                  "Correo del estudiante",
                  "Introduzca el correo del estudiante",
                  Icons.email,
                ),
                textFormField(
                  nameAdvisorEditingController,
                  "Nombre del tutor",
                  "Introduzca el nombre del tutor",
                  Icons.face,
                ),
                textFormField(
                  emailAdvisorEditingController,
                  "Correo del tutor",
                  "Introduzca el correo del tutor",
                  Icons.email,
                ),
                RaisedButton(
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Guardar',
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                        color: Colors.white),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
<<<<<<< Updated upstream
                      final database = Provider.of<QueriesDao>(context);
=======
                      final database = Provider.of<AppDatabase>(context);
>>>>>>> Stashed changes
                      final student = Student(
                        nameStudent: nameStudentEditingController.text,
                        emailStudent: emailStudentEditingController.text,
                        nameAdvisor: nameAdvisorEditingController.text,
                        emailAdvisor: emailAdvisorEditingController.text,
                        calif: 100,
                        idGroupStudent: 1,
                      );
                      database.insertStudent(student);
                      Navigator.pop(context);
                    }
                    
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  textFormField(
      TextEditingController t, String label, String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Campo obligatorio';
          }
        },
        controller: t,
        textCapitalization: TextCapitalization.words,
        decoration: InputDecoration(
            prefixIcon: Icon(iconData),
            hintText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
