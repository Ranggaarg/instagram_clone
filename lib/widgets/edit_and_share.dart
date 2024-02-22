import 'package:flutter/material.dart';

class ButtonEditAndShare extends StatelessWidget {
  const ButtonEditAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              fixedSize: Size(160, 20),
              side: BorderSide(style: BorderStyle.none)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'Share Profile',
              style: TextStyle(color: Colors.black),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.grey[200],
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              fixedSize: Size(160, 20),
              side: BorderSide(style: BorderStyle.none),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 35,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_add_outlined,
              size: 18,
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
        )
      ],
    );
  }
}
