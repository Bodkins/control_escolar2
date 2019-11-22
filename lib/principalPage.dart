import 'package:control_escolar/studentsPage.dart';
import 'package:flutter/material.dart';
import 'package:control_escolar/db/moor_database.dart';
import 'package:control_escolar/AddGroup.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
        builder: (_) => AppDatabase(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Grupos'),
            backgroundColor: Color.fromRGBO(249, 170, 51, 1),
            actions: <Widget>[],
          ),
          body: Column(
            children: <Widget>[
              Expanded(child: _buildGroupList(context)),
            ],
          ),
          /*
      body: Column(
        children: <Widget>[
          Expanded(
            child: _buildGroupList(context),
            )
        ],
      ),
      */
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
                  .push(MaterialPageRoute(builder: (context) => AddGroup()));
            },
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}

StreamBuilder<List<Group>> _buildGroupList(BuildContext context) {
  final database = Provider.of<AppDatabase>(context);
  return StreamBuilder(
    stream: database.watchAllGroups(),
    builder: (context, AsyncSnapshot<List<Group>> snapshot) {
      final groups = snapshot.data ?? List();

      return ListView.builder(
        itemCount: groups.length,
        itemBuilder: (_, index) {
          final itemGroup = groups[index];
          return _buiListItem(itemGroup, database);
        },
      );
    },
  );
}

Widget _buiListItem(Group itemGroup, AppDatabase database) {
  return Slidable(
    actionPane: SlidableDrawerActionPane(),
    secondaryActions: <Widget>[
      IconSlideAction(
        caption: 'Borrar',
        color: Colors.red,
        icon: Icons.delete,
        onTap: () => database.deleteGroup(itemGroup),
      )
    ],
    child: ListTile(
      title: Text(itemGroup.nameGroup),
      subtitle: Text(itemGroup.nameSubject),
    ),
  );
}

/*
CheckboxListTile(
      title: Text(itemGroup.nameGroup),
      subtitle: Text(itemGroup.nameSubject),
      value: true,
      onChanged: (newValue) {
        database.updateGroup(itemGroup.copyWith());
      },
      activeColor: Colors.transparent,
      checkColor: Colors.transparent,

    ),
 */

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
