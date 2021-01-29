import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

String tableName = 'char';
String columnId = 'id';
String columnTitle = 'title';
String columnDescription = 'description';
String columnDate = 'date';
String columnIcon = 'icon';

class TodoListHelper {
  static Database _database;
  static TodoListHelper _todoListHelper;

  TodoListHelper._creatingInstance();

//Check if my BMIHelper class is initialized but i dont know why they initialized a class
  factory TodoListHelper() {
    if (_todoListHelper == null) {
      _todoListHelper = TodoListHelper._creatingInstance();
    }
    return _todoListHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializedDatabase();
    }
    return _database;
  }

  initializedDatabase() async {
    var dir = await getDatabasesPath();
    var path = dir + 'todo.db';

    return openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute('''
      create table $tableName($columnId integer primary key autoincrement, $columnTitle text not  null, $columnDescription text not null, $columnDate text not null);
      ''');
    });
  }
}
