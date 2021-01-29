import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  BackGround({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
