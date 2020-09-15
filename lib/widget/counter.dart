import 'package:flutter/material.dart';
import 'package:covid19_status/constant/constants.dart';

class Counter extends StatelessWidget {
  final String number;
  final Color color;
  final String title;

  const Counter({
    Key key,
    this.number,
    this.color,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6.0),
          height: 25.0,
          width: 25.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2.0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          '$number',
          style: TextStyle(
            fontSize: 30,
            color: color,
          ),
        ),
        Text(
          '$title',
          style: kSubTextStyle,
        ),
      ],
    );
  }
}
