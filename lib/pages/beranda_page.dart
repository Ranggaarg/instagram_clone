import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/storyhighlights.dart';

void main() => runApp(BerandaPage());

class BerandaPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                AppBar(
                  toolbarHeight: 60,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  title: Text(
                    'Instagram',
                    style: TextStyle(color: Colors.black),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message_outlined,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 5, left: 10, bottom: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StoryActivate('https://picsum.photos/id/50//200/300',
                            'your story'),
                        StoryActivate(
                            'https://picsum.photos/id/60//200/300', 'leomessi'),
                        StoryActivate('https://picsum.photos/id/70//200/300',
                            'cristiano'),
                        StoryActivate(
                            'https://picsum.photos/id/80//200/300', 'prabowo'),
                        StoryActivate(
                            'https://picsum.photos/id/90//200/300', 'jokowi'),
                        StoryActivate('https://picsum.photos/id/100//200/300',
                            'folkative'),
                        StoryActivate('https://picsum.photos/id/110//200/300',
                            'kampusbudiluhur'),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey[300],
                  height: 1,
                  thickness: 0,
                ),
                Container(
                  color: Colors.white,
                  height: 700,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StoryBeranda('https://picsum.photos/id/110//200/300',
                              'Kampus Budi Luhur'),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      ),
                      Container(
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://picsum.photos/id/182//200/300'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.heart_broken_outlined),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.comment_outlined),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.only(right: 20),
                              child: Icon(Icons.bookmark_border_outlined))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 5),
                        child: Text(
                          '100,247 likes',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Kampus Budi Luhur',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text('Pemandangan yang indah dan cantik'),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'View all 900 comments',
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          '5 hours ago',
                          style: TextStyle(color: Colors.grey[500], fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
