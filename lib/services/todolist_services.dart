import 'package:TodoList/helpers/todolist_helper.dart';
import 'package:TodoList/models/todolist_model.dart';
import 'package:get/get.dart';

class TodoListService extends GetxController {
  TodoListService();
  TodoListHelper helper = TodoListHelper();
  List todolistContent = [];
  TodoListModel model;
  createData(TodoListModel model) async {
    var db = await this.helper.database;
    readData();

    return await db.insert(
      tableName,
      model.getMap(),
    );
  }

  readData() async {
    var db = await this.helper.database;
    List<Map<String, dynamic>> list = await db.query(tableName);
    return todolistContent = list;
  }

  testPrint() async {
    print(todolistContent);
  }

  deleteData() async {
    var db = await this.helper.database;
    await db.delete(tableName);
  }
}
