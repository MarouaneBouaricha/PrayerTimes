import 'package:flutter/material.dart';
import 'package:adhan_times/utils/constants.dart';


class IconText extends StatelessWidget {

  final Icon icon;
  final String title;
  final String subTitle;

  IconText({this.icon, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: color3, borderRadius: BorderRadius.circular(30 / 2)),
      child: icon,
    ),
        SizedBox(
          width: 10,
        ),
        Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: TextStyle(color: Colors.white)),
        Text(subTitle, style: TextStyle(color: Colors.white, fontSize: 10)),
      ],
    ),
      ],
    );
  }
}
