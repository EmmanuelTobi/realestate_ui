import 'package:flutter/material.dart';
import 'package:realestate_ui/shared/utils/colors.dart';


class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                size: 15,
                color: secondaryColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Saint Petersburg",
                style: TextStyle(color: secondaryColor
                ),
              ),
            ],
          ),
        ),
        const CircleAvatar(
          backgroundColor: primaryColor,
          radius: 15,
          child: Icon(
            Icons.person_3_rounded,
            size: 15,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}