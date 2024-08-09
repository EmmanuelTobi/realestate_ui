import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_context_menu/flutter_context_menu.dart';

class SearchBottomOptionsView extends StatelessWidget {
  SearchBottomOptionsView({
    super.key,
    this.onWithoutLayerAction
  });

  final GlobalKey _key = GlobalKey();
  final Function? onWithoutLayerAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const IconsCircle(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showMenuWithPosition(_key,
                  onWithoutLayerAction: () => onWithoutLayerAction!()
                );
              },
              child: IconsCircle(
                key: _key,
                icon: const Icon(
                  Icons.send_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 18,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.1),
          ),
          clipBehavior: Clip.antiAlias,
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10.0,
              sigmaY: 10.0,
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.short_text_rounded,
                  color: Colors.white,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "List of Variants",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

}

class IconsCircle extends StatelessWidget {
  const IconsCircle({
    super.key,
    this.icon
  });

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.transparent,
          child: icon,
        ),
      ),
    );
  }
}

void showMenuWithPosition(GlobalKey key, {Function? onWithoutLayerAction}) {
  RenderBox? box = key.currentContext?.findRenderObject() as RenderBox?;
  Offset? position = box?.localToGlobal(Offset.zero);
  double y = position?.dy ?? 0;
  double x = position?.dx ?? 0;

  int yOffset = -170;
  y = y + yOffset;

  final contextMenu = ContextMenu(
      entries: <ContextMenuEntry>[
        MenuItem(
          label: 'Cosy Areas',
          icon: Icons.home,
          onSelected: () {

          },
        ),
        MenuItem(
          label: 'Price',
          icon: Icons.wallet,
          onSelected: () {

          },
        ),
        MenuItem(
          label: 'Infrastructure',
          icon: Icons.shopping_basket_outlined,
          onSelected: () {

          },
        ),
        MenuItem(
          label: 'Without any layers',
          icon: Icons.layers,
          onSelected: () => onWithoutLayerAction!(),
        ),
      ],
      position: Offset(x, y),
      padding: const EdgeInsets.all(18.0),
      borderRadius: BorderRadius.circular(20));

  showContextMenu(key.currentContext!, contextMenu: contextMenu);
}

