import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_store/pages/account_page.dart';
import 'package:grocery_store/pages/cart_page.dart';
import 'package:grocery_store/pages/explore_page.dart';
import 'package:grocery_store/pages/favorite_page.dart';
import 'package:grocery_store/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static int currentIndex = 0;
  final List<Widget> _page =[
    HomePage(),
    ExplorePage(),
    CartPage(),
    FavoritePage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap:
            (index) => {
              setState(() {
                currentIndex = index;
              })
            },
        currentIndex: currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/shop_icon.svg"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/explore_icon.svg"),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/favourite_icon.svg"),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/cart_icon.svg"),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/account_icon.svg"),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
