import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class maynavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  maynavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color: Colors.black,
          activeColor: Colors.black,
          mainAxisAlignment: MainAxisAlignment.center,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'carts',
            ),
          ]),
    );
  }
}
