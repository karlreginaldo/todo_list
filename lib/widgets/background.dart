import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  BackGround({@required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
