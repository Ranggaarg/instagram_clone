import 'package:flutter/material.dart';
import 'package:instagram_clone/main.dart';

void main() => runApp(SearchPage());

class SearchPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: 55,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, top: 10, right: 15, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            GridView.builder(
              itemCount: 150,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 3, crossAxisSpacing: 3),
              itemBuilder: (context, index) => Image.network('https://picsum.photos/id/${50+ index}//200/300', fit: BoxFit.cover),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: 'Movie'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
