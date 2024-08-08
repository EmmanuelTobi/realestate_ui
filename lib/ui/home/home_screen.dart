import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:realestate_ui/ui/home/views/buyandrent_view.dart';
import 'package:realestate_ui/ui/home/views/home_top_bar.dart';
import 'package:realestate_ui/ui/home/views/interiors.dart';
import 'package:realestate_ui/utils/colors.dart';
import 'package:realestate_ui/utils/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          height: double.infinity,
          width: constraints.maxWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(228, 238, 228, 14),
                primaryColor.withOpacity(0.1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              stops: const [0.4, 0.9],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeTopBar(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Hi, Marina",
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "let's select your\nperfect place",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 33,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const BuyRentView(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 3,
                    vertical: 3,
                  ),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.2,
                        child: Interiors(
                          image: "interior_1".toJPG(),
                          title: "Gladkova St, 25.",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 2,
                        child: Interiors(
                          image: "interior_2".toJPG(),
                          title: "Trefvola St, 26.",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Interiors(
                          image: "interior_3".toJPG(),
                          title: "Gladkova St, 27.",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 1,
                        mainAxisCellCount: 1,
                        child: Interiors(
                          image: "interior_4".toJPG(),
                          title: "Savado St, 29",
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 1.5,
                        child: Interiors(
                          image: "interior_5".toJPG(),
                          title: "Gladkova St, 25.",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}