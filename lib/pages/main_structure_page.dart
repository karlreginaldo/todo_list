import 'package:TodoList/widgets/background.dart';
import 'package:flutter/material.dart';

class MainStructure extends StatelessWidget {
  final Widget child;
  MainStructure(this.child);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          SingleChildScrollView(
            child: child,
          )
        ],
      ),
    );
  }
}
