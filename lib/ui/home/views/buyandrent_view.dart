import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:realestate_ui/utils/colors.dart';
import 'package:realestate_ui/views/animating_text.dart';

class BuyRentView extends StatelessWidget {
  const BuyRentView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width/2 - 20,
            height: 200,
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
          Container(
            width: MediaQuery.of(context).size.width/2 - 20,
            height: 190,
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
