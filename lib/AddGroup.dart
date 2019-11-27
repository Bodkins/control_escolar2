import 'package:control_escolar/db/moor_database.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

//import 'package:control_escolar/db/database.dart';

class AddGroup extends StatefulWidget {
  @override
  _AddGroupState createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  TextEditingController nameGroupEditingController = TextEditingController();

  TextEditingController nameMateEditingController = TextEditingController();

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
               Container(
                 child: Image.asset('assets/images/grupo.png'),
               ),
                textFormField(
                  nameGroupEditingController,
                  "Nombre del grupo",
                  "Introduzca el nombre del grupo",
                  Icons.group,
                  "Campo obligatorio"
                ),
                textFormField(
                  nameMateEditingController,
                  "Nombre de la materia",
                  "Introduzca la materia",
                  Icons.assessment,
                    "Campo obligatorio"
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
                      final database = Provider.of<AppDatabase>(context);
                      final group = Group(
                        nameGroup: nameGroupEditingController.text,
                        nameSubject: nameMateEditingController.text,
                        emailUserGroup: database.users.emailUser.typeName,
                      );
                      database.insertGroup(group);
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
      TextEditingController t, String label, String hint, IconData iconData, String mensaje) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return mensaje;
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
