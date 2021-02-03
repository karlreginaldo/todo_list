import 'package:TodoList/assets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatingActionWidget extends StatelessWidget {
  FloatingActionWidget(this.onPressed);
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 20,
      child: FloatingActionButton(
        elevation: 10,
        onPressed: onPressed,
        child: FaIcon(
          FontAwesomeIcons.folderPlus,
          color: gridViewColor,
        ),
      ),
    );
  }

  /* showDialog(context, onConfirm) {
    TodoListModel model;

    Get.bottomSheet(
      Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Text(
                    'Cancel',
                    style: titleFont(fontSize: 16),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    'Confirm',
                    style: titleFont(fontSize: 16),
                  ),
                  onPressed: onConfirm,
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  } */
}
