import 'package:flutter/material.dart';
import 'package:adhan_times/utils/constants.dart';

class WaktuSalat extends StatelessWidget {
  final name;
  final time;
  WaktuSalat({this.name, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration:
          BoxDecoration(color: color3, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Text(
                time,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.alarm, color: Colors.white)
            ],
          )
        ],
      ),
    );
  }
}

