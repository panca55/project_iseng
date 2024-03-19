import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Location',
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(Icons.favorite_border_outlined, color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Person',
            icon: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Icon(Icons.person_outline, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
