import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'appbarheader.dart';
import 'descriptionheader.dart';

class HeaderWidget extends StatelessWidget {
  final bool appBarOnly;
  final FaIcon icon;
  HeaderWidget(this.appBarOnly, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          AppBarHeaderWidget(
            icon: icon,
          ),
          SizedBox(
            height: 50,
          ),
          appBarOnly ? SizedBox() : DescriptionHeaderWidget(),
        ],
      ),
    );
  }
}
