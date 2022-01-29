import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/pages/home_page.dart';
import 'package:flutter_codigo4_youapp/pages/library_page.dart';
import 'package:flutter_codigo4_youapp/pages/subscription_page.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {

  List<Widget> _pages = [
    HomePage(),
    Center(
      child: Text("Page 2"),
    ),
    Center(
      child: Text("Page 3"),
    ),
    SubscriptionPage(),
    LibraryPage(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1B1B1B),
        elevation: 0,
        title: Image.asset(
          'assets/images/logo.png',
          height: 22.0,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.cast,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(
                  Icons.notifications_none,
                ),
                Positioned(
                  right: -5,
                  top: 0,
                  child: Container(
                    height: 17,
                    width: 17,
                    padding: EdgeInsets.all(1.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      "9+",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16.0, left: 10),
            child: const CircleAvatar(
              radius: 16.0,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              ),
            ),
          ),
        ],
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff1B1B1B),
        selectedItemColor: Colors.white,
        selectedFontSize: 12.0,
        unselectedItemColor: Colors.white54,
        unselectedFontSize: 12.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (int value) {
          _index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Principal",
            icon: Icon(
              Icons.home_filled,
            ),
          ),
          BottomNavigationBarItem(
            label: "Shorts",
            icon: Icon(
              Icons.play_arrow_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.add_circle_outline,
              size: 26,
            ),
          ),
          BottomNavigationBarItem(
            label: "Suscripciones",
            icon: Icon(
              Icons.subscriptions_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Biblioteca",
            icon: Icon(
              Icons.video_collection_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
