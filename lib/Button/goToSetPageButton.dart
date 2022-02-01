// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoButton extends StatefulWidget {
  String title;
  Function onTap;
  GoButton({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  _GoButtonState createState() => _GoButtonState();
}

class _GoButtonState extends State<GoButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "${widget.title}",
          style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w600),
        ),
        IconButton(
          onPressed: widget.onTap,
          highlightColor: Colors.yellow,
          splashColor: Colors.yellow,
          icon: Container(
              decoration:
                  BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
              child: Center(
                  child: FaIcon(
                FontAwesomeIcons.chevronRight,
                color: Colors.black,
                size: 20,
              ))),
        ),
      ],
    );
  }
}
