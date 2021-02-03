import 'package:TodoList/assets/colors/colors.dart';
import 'package:TodoList/assets/fonts/fonts.dart';
import 'package:TodoList/pages/detail_page.dart';
import 'package:TodoList/services/todolist_services.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * .6,
      borderRadius: BorderRadius.circular(50),
      bgColor: gridViewColor,
      child: Center(
        child: GridViewContent(),
      ),
    );
  }
}

class GridViewContent extends StatefulWidget {
  @override
  _GridViewContentState createState() => _GridViewContentState();
}

class _GridViewContentState extends State<GridViewContent> {
  loadData() async {
    await Get.find<TodoListService>().readData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    loadData();

    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
          Get.find<TodoListService>().todolistContent.length, (index) {
        return GestureDetector(
          onTap: () {
            Get.to(DetailPage(index));
          },
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0x50ffffff),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(FontAwesomeIcons.tasks),
                    Text(
                      Get.find<TodoListService>()
                          .todolistContent[index]
                          .title
                          .toUpperCase(),
                      style: titleFont(fontSize: 20),
                    ),
                  ],
                ),
                Text(
                  Get.find<TodoListService>()
                      .todolistContent[index]
                      .description,
                  textAlign: TextAlign.justify,
                  maxLines: 4,
                  style: bodyFont(),
                ),
                Text(
                  Get.find<TodoListService>().todolistContent[index].date,
                  style: bodyFont(),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
