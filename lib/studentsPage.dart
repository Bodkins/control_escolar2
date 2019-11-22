import 'package:flutter/material.dart';

import 'package:control_escolar/model/client_model.dart';

import 'package:control_escolar/db/database.dart';

import 'package:control_escolar/AddGroup.dart';

import 'dart:io';

import 'package:flutter/painting.dart';


class StudentsPage extends StatefulWidget {

  @override

  _StudentsPageState createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {

  @override
  void didUpdateWidget(StudentsPage oldWidget) {

    super.didUpdateWidget(oldWidget);

    setState(() {});

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Estudiantes'),
        //backgroundColor: Color.fromRGBO(249, 170, 51,1 ),
        backgroundColor: Colors.green,
        actions: <Widget>[],

      ),

      //Metodo en future: para obtener todos los estudiantes (cambiar getAllClients())
      body: FutureBuilder<List<Client>>(
        future: ClientDatabaseProvider.db.getAllClients(),
        builder: (BuildContext context, AsyncSnapshot<List<Client>> snapshot) {

          if (snapshot.hasData) {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                Client item = snapshot.data[index];
                return Dismissible(
                  key: UniqueKey(),
                  background: Container(
                    color: Colors.red,
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                    ),
                    child: Text(
                      'Borrar',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white),
                    ),
                  ),
                  child: ListTile(
                    title: Text(item.nameGroup),
                    subtitle: Text(item.nameMate),
                    leading: CircleAvatar(
                      child: Text(item.id.toString()),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddGroup(
                            true,
                            client: item,
                          )));
                    },
                  ),
                  onDismissed: (direction) {
                    ClientDatabaseProvider.db.deleteClientWhitID(item.id);
                  },
                  confirmDismiss: (DismissDirection direction) async {
                    final bool res = await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Confirmar"),
                          content: const Text("¿Deseas borrar este estudiante?"),
                          actions: <Widget>[
                            FlatButton(

                              onPressed: () {
                                Navigator.of(context ).pop(true);
                                ClientDatabaseProvider.db
                                    .deleteClientWhitID(item.id);
                                didUpdateWidget(StudentsPage());
                              },
                              child: const Text("Aceptar"),
                            ),
                            FlatButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text("Cancelar"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(249, 170, 51,1 ),
        shape: const CircularNotchedRectangle(),

        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,

        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddGroup(false)));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}