import 'package:TodoList/helpers/todolist_helper.dart';
import 'package:TodoList/models/todolist_model.dart';
import 'package:get/get.dart';

class TodoListService extends GetxController {
  TodoListService();
  TodoListHelper helper = TodoListHelper();
  List<TodoListModel> todolistContent = [];
}
