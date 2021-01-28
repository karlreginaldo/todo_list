import 'package:TodoList/assets/fonts/fonts.dart';
import 'package:TodoList/widgets/gridview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [Header(), GridViewWidget()],
      ),
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
        Text(
          '''Do you want to plan a trip, meeting or party? Let me help you!''',
          style: GoogleFonts.poppins(fontSize: 24, color: Colors.white),
        ),
      ],
    );
  }
}
