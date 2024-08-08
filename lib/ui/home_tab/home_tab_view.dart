import 'package:flutter/material.dart';
import 'package:realestate_ui/ui/home/home_screen.dart';
import 'package:realestate_ui/ui/search/search_screen_view.dart';
import 'package:realestate_ui/utils/colors.dart';
import 'package:realestate_ui/views/bottom_nav_bar.dart';

class HomeTabView extends StatefulWidget {
  const HomeTabView({super.key});

  @override
  State<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  int initialIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: initialIndex,
        children: const [
          SearchScreen(),
          Center(
            child: Text('Coming soooonn.....', style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: secondaryColor
            ),),
          ),
          HomeScreen(),
          Center(
            child: Text('Coming soooonn.....', style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: secondaryColor
            ),),
          ),
          Center(
            child: Text('Coming soooonn.....', style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: secondaryColor
            ),),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBarView(
        currentIndex: initialIndex,
        onItemTap: (p0) {
          setState(() {
            initialIndex = p0;
          });
        },
      ),
    );
  }
}