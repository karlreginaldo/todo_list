import 'package:TodoList/assets/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TexFieldWidget extends StatelessWidget {
  final int maxLines;
  final FaIcon icon;
  final String labelText;
  final bool isNull;
  final TextEditingController controller;
  TexFieldWidget(
      {this.maxLines, this.icon, this.labelText, this.controller, this.isNull});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        errorText: (isNull) ? 'Please Enter Value' : null,
        labelText: labelText,
        labelStyle: bodyFont(fontSize: 16),
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white)),
        icon: icon,
      ),
    );
  }
}
