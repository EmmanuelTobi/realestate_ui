import 'package:flutter/material.dart';
import 'package:realestate_ui/shared/utils/colors.dart';

List<Align> mapPinsRandom({bool? showNumbers}) {
  List<Align> pins = [];

  pins.addAll([

    Align(
      alignment: const Alignment(
          0.434, 0.3
      ),
      child: SetPins(showNumbers: showNumbers,),
    ),

    Align(
      alignment: const Alignment(
          -0.7, -0.4
      ),
      child: SetPins(showNumbers: showNumbers,),
    ),

    Align(
      alignment: const Alignment(
          -0.5, -0.2
      ),
      child: SetPins(showNumbers: showNumbers,),
    ),

    Align(
      alignment: const Alignment(
          0.8, 0.1
      ),
      child: SetPins(showNumbers: showNumbers,),
    ),

    Align(
      alignment: const Alignment(
          -0.3, 0.4
      ),
      child: SetPins(showNumbers: showNumbers,),
    ),

    Align(
      alignment: const Alignment(
          0.4, -0.5
      ),
      child: SetPins(showNumbers: showNumbers,),
    ),

  ]);

  return pins;
}

class SetPins extends StatelessWidget {

  const SetPins({
    super.key,
    this.showNumbers = false
  });

  final bool? showNumbers;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      height: 50,
      width: showNumbers! == true ? 40 : 80,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(8),
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8)),
      ),
      child: Center(
        child: showNumbers! == true ? const Icon(
          Icons.home_work_outlined,
          color: Colors.white,
        ) : const Padding(
          padding: EdgeInsets.all(2.0),
          child: Text('11,45 mmp', style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),),
        ),
      ),
    );
  }
}