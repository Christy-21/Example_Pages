import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:h_pets/screens/blogs.dart';
import 'package:h_pets/screens/home.dart';

import 'package:h_pets/screens/profile.dart';
import 'package:h_pets/screens/shop.dart';
import 'package:h_pets/screens/sos.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _bottomNavIndex = 0;
  List<Widget> pages = const [
    HomeDash(),
    ShopScreen(),
    BlogScreen(),
    ProfilePage(),
  ];

  List<IconData> iconList = [
    Icons.home,
    Icons.shopping_cart,
    Icons.auto_stories,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _bottomNavIndex,
        children: pages,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: const SosPage(),
                  type: PageTransitionType.bottomToTop));
        },
        child: Image.asset(
          'assets/sos1.png',
          height: 30.0,
        ),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Colors.red,
        activeColor: Colors.red,
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
