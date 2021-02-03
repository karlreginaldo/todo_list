import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarHeaderWidget extends StatelessWidget {
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
