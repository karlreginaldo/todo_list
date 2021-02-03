import 'package:TodoList/assets/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({this.child, this.height, this.margin});
  final Widget child;
  final double height;
  final EdgeInsetsGeometry margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: gridViewColoropac, borderRadius: BorderRadius.circular(30)),
      child: child,
      height: height,
      margin: margin,
    );
  }
}
