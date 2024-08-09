import 'package:flutter/material.dart';
import 'package:realestate_ui/shared/utils/colors.dart';


const _icons = [
  Icon(
    Icons.search,
    color: Colors.white,
    size: 24,
  ),
  Icon(
    Icons.mark_unread_chat_alt_rounded,
    color: Colors.white,
    size: 24,
  ),
  Icon(
    Icons.home_filled,
    color: Colors.white,
    size: 24,
  ),
  Icon(
    Icons.favorite,
    color: Colors.white,
    size: 24,
  ),
  Icon(
    Icons.person_4_rounded,
    color: Colors.white,
    size: 24,
  ),
];

class BottomNavBarView extends StatefulWidget {
  final Function(int) onItemTap;
  final int currentIndex;

  const BottomNavBarView({
    super.key,
    required this.onItemTap,
    required this.currentIndex,
  });

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 68,
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
              decoration: BoxDecoration(
                color: bottomNavBar,
                borderRadius: BorderRadius.circular(36),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  _icons.length,
                  (index) {
                    return InkWell(
                      onTap: () {

                        setState(() {
                          currentIndex = index;
                        });

                        widget.onItemTap(index);
                      },
                      child: AnimatedContainer(
                        height: currentIndex == index ? 58 : 40,
                        width: currentIndex == index ? 58 : 40,
                        duration: const Duration(milliseconds: 500),
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? primaryColor
                              : bottomNavIcon,
                          shape: BoxShape.circle,
                        ),
                        child: _icons[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
