import 'package:flutter/material.dart';
import 'package:realestate_ui/screens/search/views/bottom_options_view.dart';
import 'package:realestate_ui/shared/map_pins_view.dart';
import 'package:realestate_ui/shared/utils/colors.dart';
import 'package:realestate_ui/shared/utils/extensions.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  var showNumbers = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "map_img".toPNG(),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            ...mapPinsRandom(
                showNumbers: showNumbers
            ),
            Positioned(
              top: 60,
              left: 40,
              right: 40,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        controller: TextEditingController(),
                        onChanged: (s) {

                        },
                        decoration: const InputDecoration(
                          hintText: "Saint Petersburg",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: bottomNavIcon,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25,
                    child: Icon(
                      Icons.settings,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: kBottomNavigationBarHeight + 60,
              left: 40,
              right: 40,
              child: SearchBottomOptionsView(
                onWithoutLayerAction: (){

                  setState(() {

                    if(showNumbers == true) {
                      showNumbers = false;
                    } else {
                      showNumbers = true;
                    }

                  });

                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
