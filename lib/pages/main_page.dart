import 'package:TodoList/models/todolist_model.dart';
import 'package:TodoList/services/todolist_services.dart';
import 'package:TodoList/widgets/gridview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TodoListModel model;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoListService>(
      init: TodoListService(),
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(),
            RaisedButton(
              onPressed: () {
                model = TodoListModel(
                    'Meeting', 'This is meeting', 'January 26 2001');

                Get.find<TodoListService>().createData(model);
              },
              child: Text('Create'),
            ),
            RaisedButton(
              onPressed: () {
                Get.find<TodoListService>().readData();
              },
              child: Text('Read'),
            ),
            RaisedButton(
              onPressed: () {
                Get.find<TodoListService>().deleteData();
              },
              child: Text('Delete'),
            ),
            RaisedButton(
              onPressed: () {
                Get.find<TodoListService>().testPrint();
              },
              child: Text('Test'),
            ),
            GridViewWidget(),
          ],
        );
      },
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          AppBarHeader(),
          SizedBox(
            height: 50,
          ),
          DescriptionHeader(),
        ],
      ),
    );
  }
}

class AppBarHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FaIcon(FontAwesomeIcons.bars),
        CircleAvatar(
          radius: 32,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/avatar.jpg',
            ),
            radius: 30,
          ),
        ),
      ],
    );
  }
}

class DescriptionHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hey Karl,',
          style: GoogleFonts.poppins(fontSize: 36, color: Colors.white),
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          '''Do you want to plan a trip, meeting or party? Let me help you!''',
          style: GoogleFonts.poppins(fontSize: 24, color: Colors.white),
        ),
      ],
    );
  }
}
