import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, top: 7),
          height: 83,
          width: 83,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(85/2),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.red, Colors.amber,],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 7),
          height: 78,
          width: 78,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            image: DecorationImage(image: NetworkImage('https://picsum.photos/id/200/202/300'),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(80/2),
            color: Colors.grey
          ),
        )
      ],
    );
  }
}
