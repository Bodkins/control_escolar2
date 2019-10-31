import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sql.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:control_escolar/model/client_model.dart';

class ClientDatabaseProvider {



  ClientDatabaseProvider._();







  static final ClientDatabaseProvider db = ClientDatabaseProvider._();



  Database _database;







  //para evitar que abra conexiones una y otra vez







  Future<Database> get database async {



    if (_database != null) return _database;



    _database = await getDatabaseInstance();



    return _database;



  }







  Future<Database> getDatabaseInstance() async {



    Directory directory = await getApplicationDocumentsDirectory();



    String path = join(directory.path, "Client.db");



    return await openDatabase(path, version: 1,



        onCreate: (Database db, int version) async {



          await db.execute("CREATE TABLE Client ("



              "id integer primary key, "



              "nameGroup TEXT, "



              "nameMate TEXT)");



        });



  }







  //Query



  //Muestra todos los estudiantes de la base de datos



  Future<List<Client>> getAllClients() async {



    final db = await database;



    var response = await db.query("Client");



    List<Client> list = response.map((c) => Client.fromMap(c)).toList();



    return list;



  }







  //Query



  //Muestra solo un estudiante de la base de datos



  Future<Client> getClientWhitId(int id) async {



    final db = await database;



    var response = await db.query("Client", where: "id = ?", whereArgs: [id]);



    return response.isNotEmpty ? Client.fromMap(response.first) : null;



  }







  //Insertar estdiante



  addClientToDatabase(Client client) async {



    final db = await database;



    var table = await db.rawQuery("SELECT MAX(id) + 1 as id FROM Client");



    int id = table.first["id"];



    client.id = id;



    var raw = await db.insert("Client", client.toMap(),



        conflictAlgorithm: ConflictAlgorithm.replace);



    return raw;



  }







  //Eliminar a un estudiante



  deleteClientWhitID(int id) async {



    final db = await database;



    return db.delete("Client", where: "id = ?", whereArgs: [id]);



  }







  //Eliminar todos los estudiantes



  deleteAllClient() async {



    final db = await database;



    db.delete("Client");



  }






  //Actualizar datos de la tabla



  updateClient(Client client) async {



    final db = await database;



    var response = await db.update("Client", client.toMap(),



        where: "id = ?", whereArgs: [client.id]);



    return response;



  }



}