import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: TabBar(
          indicatorColor: Colors.black,
          indicatorWeight: 1,
          tabs: [
            Tab(
              icon: Icon(
                Icons.grid_on,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_pin_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );
  }
}
