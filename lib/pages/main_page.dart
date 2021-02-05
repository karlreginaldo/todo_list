import 'package:TodoList/assets/fonts/fonts.dart';
import 'package:TodoList/models/todolist_model.dart';
import 'package:TodoList/services/todolist_services.dart';
import 'package:TodoList/widgets/floatingactionheader.dart';
import 'package:TodoList/widgets/gridview.dart';
import 'package:TodoList/widgets/header.dart';
import 'package:TodoList/widgets/textfieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TodoListModel model = TodoListModel();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoListService>(
      init: TodoListService(),
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            HeaderWidget(false, FaIcon(FontAwesomeIcons.bars)),
            Stack(
              children: [
                customTextField(),
                FloatingActionWidget(
                  () {
                    handler(model: model);
                  },
                ),
              ],
            ),
            GridViewWidget(),
          ],
        );
      },
    );
  }

  Container customTextField() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'What\'s your plan?',
            style: titleFont(fontSize: 24),
          ),
          SizedBox(
            height: 10,
          ),
          TexFieldWidget(
            isNull: Get.find<TodoListService>().isTitleNull,
            controller: model.titleController,
            icon: FaIcon(
              FontAwesomeIcons.tag,
            ),
            labelText: 'Title',
          ),
          SizedBox(
            height: 10,
          ),
          TexFieldWidget(
            isNull: Get.find<TodoListService>().isDescriptionNull,
            controller: model.descriptionController,
            icon: FaIcon(
              FontAwesomeIcons.solidStickyNote,
            ),
            labelText: 'Description',
            maxLines: 5,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  //Function:I think it should be replaced in services(I feel my code is a little bit dirty and a mess)
  void showValidation() {
    return Get.snackbar(
      'Congrats',
      'You have succesfully add new BMI',
      colorText: Colors.black,
    );
  }

//Function:This function shows the error if somewhere in the button is null and execute if all buttons was filled(this time I think that's the best way I can write)
  void handler({TodoListModel model}) async {
    if (model.titleController.text.isEmpty &&
        model.descriptionController.text.isEmpty) {
      print('Empty Both');
      Get.find<TodoListService>().isTitleNull = true;
      Get.find<TodoListService>().isDescriptionNull = true;
      setState(() {});
    } else if (model.titleController.text.isNotEmpty &&
        model.descriptionController.text.isNotEmpty) {
      print('Not Empty Both');
      Get.find<TodoListService>().isTitleNull = false;
      Get.find<TodoListService>().isDescriptionNull = false;

      model = TodoListModel(
          model.titleController.text,
          model.descriptionController.text,
          Get.find<TodoListService>().dateNow());

      await Get.find<TodoListService>().createData(model);
      await Get.find<TodoListService>().readData();

      showValidation();
      setState(() {});
    } else if (model.titleController.text.isEmpty) {
      print('Empty Height');
      Get.find<TodoListService>().isTitleNull = true;
      Get.find<TodoListService>().isDescriptionNull = false;
      setState(() {});
    } else if (model.descriptionController.text.isEmpty) {
      print('Empty Weight');
      Get.find<TodoListService>().isDescriptionNull = true;
      Get.find<TodoListService>().isTitleNull = false;
      setState(() {});
    } else if (model.titleController.text.isNotEmpty) {
      print('Not Empty Height');

      Get.find<TodoListService>().isTitleNull = false;
      setState(() {});
    } else if (model.descriptionController.text.isNotEmpty) {
      print('Not Empty Weight');
      Get.find<TodoListService>().isDescriptionNull = false;
      setState(() {});
    }
  }
}
