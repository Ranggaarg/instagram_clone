import 'package:flutter/material.dart';
import '/widgets/profilewidget.dart';
import '/widgets/storyhighlights.dart';
import '/widgets/infoitem.dart';
import '/widgets/edit_and_share.dart';
import '/widgets/tabbarwidget.dart';

void main() => runApp(ProfilePage());

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController tabC = TabController(length: 2, vsync: this);
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text(
                'ranggaarg_',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                ProfileWidget(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InfoItem('0', 'posts'),
                        InfoItem('425', 'followers'),
                        InfoItem('300', 'following'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rangga Arya Gardika',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  height: 30,
                  width: 30,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.alternate_email_rounded,
                        size: 15,
                        weight: 20,
                      )),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(25 / 2)),
                ),
                Text(
                  'Keep move or die here',
                ),
                ButtonEditAndShare(),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  StoryHighlights(
                      'https://picsum.photos/seed/picsum/200/300', 'Jogja'),
                  StoryHighlights(
                      'https://picsum.photos/id/240/200/300', 'Bali'),
                  StoryHighlights(
                      'https://picsum.photos/id/290/200/300', 'Aceh'),
                  StoryHighlights(
                      'https://picsum.photos/id/255/200/300', 'Bandung'),
                  StoryHighlights(
                      'https://picsum.photos/id/260/200/300', 'NTT'),
                  StoryHighlights(
                      'https://picsum.photos/id/265/200/300', 'Banda Neira'),
                  StoryHighlights(
                      'https://picsum.photos/id/270/200/300', 'Japan'),
                  StoryHighlights(
                      'https://picsum.photos/id/275/200/300', 'Korea'),
                  StoryHighlights(
                      'https://picsum.photos/id/280/200/300', 'Barcelona'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              TabItem(true, Icons.grid_on),
              TabItem(false, Icons.person_pin_outlined),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 150,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (context, index) => Image.network('https://picsum.photos/id/${50+ index}//200/300', fit: BoxFit.cover,),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: 'Movie'),
          BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  TabItem(this.active, this.icon);

  final bool active;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(
              color: active == true ? Colors.black : Colors.white, width: 1),
        )),
        child: Icon(icon),
        padding: EdgeInsets.only(bottom: 10),
      ),
    );
  }
}
