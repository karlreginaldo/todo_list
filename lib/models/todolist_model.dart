import 'package:TodoList/helpers/todolist_helper.dart';
import 'package:flutter/material.dart';

class TodoListModel {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  int id;
  String title;
  String description;
  String date;
  TodoListModel([this.title, this.description, this.date, this.id]);

  getMap() {
    final map = Map<String, dynamic>();

    map['$columnTitle'] = this.title;
    map['$columnDescription'] = this.description;
    map['$columnDate'] = this.date;
    return map;
  }
}
