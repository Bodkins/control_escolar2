import 'package:flutter/material.dart';

import 'package:control_escolar/model/client_model.dart';

import 'package:control_escolar/db/database.dart';

class AddGroup extends StatefulWidget {
  final bool edit;

  final Client client;

  AddGroup(this.edit, {this.client}) : assert(edit == true || client == null);

  @override
  _AddGroupState createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  TextEditingController nameGroupEditingController = TextEditingController();

  TextEditingController nameMateEditingConrtoller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    if (widget.edit == true) {
      nameGroupEditingController.text = widget.client.nameGroup;

      nameMateEditingConrtoller.text = widget.client.nameMate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 170, 51,1 ),
        title: Text(widget.edit ? "Editar Grupos" : "Agregar Grupo"),
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
                    nameGroupEditingController,
                    "Nombre del grupo",
                    "Introduzca el nombre del grupo",
                    Icons.group,
                    widget.edit ? widget.client.nameGroup : "nombre del grupo"),
                textFormField(
                    nameMateEditingConrtoller,
                    "Nombre de la materia",
                    "Introduzca la materia",
                    Icons.assessment,
                    widget.edit ? widget.client.nameGroup : "Materia"),
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
                    if (!_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('procesando datos...')));
                    } else if (widget.edit == true) {
                      ClientDatabaseProvider.db.updateClient(new Client(
                          id: widget.client.id,
                          nameGroup: nameGroupEditingController.text,
                          nameMate: nameMateEditingConrtoller.text));

                      Navigator.pop(context);
                    } else {
                      await ClientDatabaseProvider.db.addClientToDatabase(
                          new Client(
                              nameGroup: nameGroupEditingController.text,
                              nameMate: nameMateEditingConrtoller.text));

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

  textFormField(TextEditingController t, String label, String hint,
      IconData iconData, String initialValue) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Introduce algun texto';
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
