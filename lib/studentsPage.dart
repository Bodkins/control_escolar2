import 'package:flutter/material.dart';
import 'package:control_escolar/db/moor_database.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'addStudent.dart';

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
        backgroundColor: Color.fromRGBO(249, 170, 51, 1),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.email,color: Colors.white,),
            onPressed:_sendEmail ,
          ),

        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _buildStudentList(context),
            )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(249, 170, 51, 1),
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddStudent()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

StreamBuilder<List<Student>> _buildStudentList(BuildContext context){
  final database = Provider.of<AppDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllStudents(),
    builder: (context, AsyncSnapshot<List<Student>> snapshot){
      final students = snapshot.data?? List();

      return ListView.builder(
        itemCount: students.length,
        itemBuilder: (_, index) {
          final itemStudent = students[index];
          return _buiListItem(itemStudent, database);
        },
      );
    },
  );
}

Widget _buiListItem (Student itemStudent, AppDatabase database){
  return Slidable(
    actionPane: SlidableDrawerActionPane(),
    secondaryActions: <Widget>[
      IconSlideAction(
        caption: 'Borrar',
        color: Colors.red,
        icon: Icons.delete,
        onTap: () => 
        database.deleteStudent(itemStudent),
      )
    ],
    child: CheckboxListTile(
      title: Text(itemStudent.nameStudent),
      subtitle: Text(itemStudent.emailStudent),
      value: true,
      onChanged: (newValue) {
        database.updateStudent(itemStudent.copyWith());
      },
      activeColor: Colors.transparent,
      checkColor: Colors.transparent,

    ),
  );
}
_sendEmail() async {
  const url = 'mailto:test_user@example.org?subject=test&body=hello';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


//Configuracion del FloatingButton
/*
bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(249, 170, 51, 1),
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
 */