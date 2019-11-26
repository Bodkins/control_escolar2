import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

/*
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  TextColumn get name => text().withLength(min: 1, max: 50)();

  DateTimeColumn get dueDate => dateTime().nullable()();

  BoolColumn get completed => boolean().withDefault(Constant(false))();
}
*/

class Students extends Table {
  IntColumn get idStudent => integer().autoIncrement().nullable()();
  TextColumn get emailStudent => text().withLength(min: 1, max: 50)();
  TextColumn get emailAdvisor => text().withLength(min: 1, max: 50)();
  TextColumn get nameStudent => text().withLength(min: 1, max: 50)();
  TextColumn get nameAdvisor => text().withLength(min: 1, max: 50)();
  IntColumn get calif => integer()();
  IntColumn get idGroupStudent => integer()();

  @override
  Set<Column> get primaryKey => {idStudent};
}

class Groups extends Table{
  IntColumn get idGroup => integer().autoIncrement().nullable()();
  TextColumn get nameGroup => text()();
  TextColumn get nameSubject => text()();
  TextColumn get emailUserGroup => text()();

  @override
  Set<Column> get primaryKey => {idGroup};
}

class Users extends Table {
  TextColumn get emailUser => text()();
  TextColumn get passwordUser => text().named('passwordUser').customConstraint('passwordUser >= 8')();

  @override
  Set<Column> get primaryKey => {emailUser};

}

@UseMoor(tables: [Students, Groups, Users])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super ((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sqlite', 
    logStatements: true)));

  @override
  int get schemaVersion => 1;

  //queries Students

  Future<List<Student>> getAllStudents() => select(students).get();
  Stream<List<Student>> watchAllStudents() => select(students).watch();
  Future insertStudent(Student student) => into(students).insert(student);
  Future updateStudent(Student student) => update(students).replace(student);
  Future deleteStudent(Student student) => delete(students).delete(student);

  //queries Groups

  Future<List<Group>> getAllGroups() => select(groups).get();
  Stream<List<Group>> watchAllGroups() => select(groups).watch();
  Future insertGroup(Group group) => into(groups).insert(group);
  Future updateGroup(Group group) => update(groups).replace(group);
  Future deleteGroup(Group group) => delete(groups).delete(group);

  //queries Users
  Future insertUser(User user) => into(users).insert(user);
  Future updateUser(User user) => update(users).replace(user);
  Future deleteUser(User user) => delete(users).delete(user);

}