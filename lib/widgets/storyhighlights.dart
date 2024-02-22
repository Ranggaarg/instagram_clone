import 'package:flutter/material.dart';

class StoryHighlights extends StatelessWidget {
  String link;
  String title;

  StoryHighlights(this.link, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 71,
                width: 71,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(85 / 2),
                ),
              ),
              Container(
                height: 69,
                width: 69,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    image: DecorationImage(
                        image: NetworkImage(link), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(67 / 2),
                    color: Colors.grey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              title,
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

class StoryActivate extends StatelessWidget {
  String link;
  String title;

  StoryActivate(this.link, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 81,
                width: 81,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(85 / 2),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red,
                      Colors.amber,
                    ],
                  ),
                ),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    image: DecorationImage(
                        image: NetworkImage(link), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(77 / 2),
                    color: Colors.grey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              title,
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

class StoryBeranda extends StatelessWidget {
  String link;
  String title;

  StoryBeranda(this.link, this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50 / 2),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.red,
                      Colors.amber,
                    ],
                  ),
                ),
              ),
              Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    image: DecorationImage(
                        image: NetworkImage(link), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(77 / 2),
                    color: Colors.grey),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Miami, Florida',
                  style: TextStyle(fontSize: 11),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
