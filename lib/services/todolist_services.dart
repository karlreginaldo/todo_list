import 'package:TodoList/helpers/todolist_helper.dart';
import 'package:TodoList/models/todolist_model.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

class TodoListService extends GetxController {
  TodoListService();
  TodoListHelper helper = TodoListHelper();
  List<TodoListModel> todolistContent = [];
  TodoListModel model;
  DateTime time;
  bool isEditing = false;
  bool isTitleNull = false;
  bool isDescriptionNull = false;
  createData(TodoListModel model) async {
    print('List: $todolistContent');
    Database db = await this.helper.database;
    return await db.insert(tableName, model.getMap());
  }

  readData() async {
    Database db = await this.helper.database;
    List<Map<String, dynamic>> list = await db.query(tableName);
    List<TodoListModel> listTempStorage = [];
    list
        .map(
          (indexContent) => listTempStorage.add(
            TodoListModel(
              indexContent['title'],
              indexContent['description'],
              indexContent['date'],
              indexContent['id'],
            ),
          ),
        )
        .toList();
    return todolistContent = listTempStorage;
  }

  updateData(int id, String newValue) async {
    Database db = await this.helper.database;
    return await db.rawUpdate(
        '''update $tableName set $columnDescription = '$newValue' where $columnId = $id''');
    // UPDATE COMPANY SET ADDRESS = 'Texas' WHERE ID = 6;
  }

  deleteData(String id) async {
    Database db = await this.helper.database;
    return await db.rawDelete('''
    delete from $tableName where $columnId = $id
    ''');
  }

  String dateNow() {
    time = DateTime.now();
    var months = [
      "January",
      "February",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    var d = new DateTime.now();
    var monthName = months[d.month - 1];
    return '$monthName ${time.day} ${time.year}';
  }
}
