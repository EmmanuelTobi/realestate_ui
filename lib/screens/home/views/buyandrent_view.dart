import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:realestate_ui/shared/animating_text.dart';
import 'package:realestate_ui/shared/utils/colors.dart';

class BuyRentView extends StatefulWidget {
  const BuyRentView({
    super.key,
  });

  @override
  State<BuyRentView> createState() => _BuyRentViewState();
}

class _BuyRentViewState extends State<BuyRentView> {

  int currentContainerViewHeight = 150;

  @override
  void initState() {

    Future.delayed(const Duration(seconds: 1) , (){

      setState(() {
        currentContainerViewHeight = 200;
      });

    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedContainer(
            width: currentContainerViewHeight > 100 ? MediaQuery.of(context).size.width/2 - 20 : 120,
            height: currentContainerViewHeight.toDouble() - 10,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "BUY",
                    style: TextStyle(color: Colors.white),
                  ),
                  Column(
                    children: [
                      AnimatingText(
                        score: 1034,
                        textColor: Colors.white,
                      ),
                      Text(
                        "offers",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox()
                ],
              ),
            ),
          ),
          AnimatedContainer(
            width: currentContainerViewHeight > 100 ? MediaQuery.of(context).size.width/2 - 20 : 120,
            height: currentContainerViewHeight.toDouble() - 10,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            padding: const EdgeInsets.all(12),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white.withOpacity(0.7),
              borderRadius: const BorderRadius.all(Radius.circular(14))
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15.0,
                sigmaY: 25.0,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "RENT",
                      style: TextStyle(color: secondaryColor),
                    ),
                    Column(
                      children: [
                        AnimatingText(
                          score: 2212,
                        ),
                        Text(
                          "offers",
                          style: TextStyle(color: secondaryColor),
                        ),
                      ],
                    ),
                    SizedBox()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
