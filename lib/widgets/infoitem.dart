import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  String title;
  String value;

  InfoItem(this.title, this.value);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
        ),
        SizedBox(
          height: 6,
        ),
        Text(value)
      ],
    );
  }
}


