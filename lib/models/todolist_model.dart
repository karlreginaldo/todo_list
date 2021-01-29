import 'package:TodoList/helpers/todolist_helper.dart';

class TodoListModel {
  String title;
  String description;
  String date;
  TodoListModel(this.title, this.description, this.date);

  getMap() {
    final map = Map<String, dynamic>();
    map['$columnTitle'] = this.title;
    map['$columnDescription'] = this.description;
    map['$columnDate'] = this.date;
    return map;
  }
}
