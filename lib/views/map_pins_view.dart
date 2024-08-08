import 'dart:math';

import 'package:flutter/material.dart';
import 'package:realestate_ui/utils/colors.dart';

List<Align> mapPinsRandom({bool? showNumbers}) {
  List<Align> pins = [];

  for (int i = 0; i < 8; i++) {
    Random random = Random.secure();

    final x = random.nextDouble() * (random.nextDouble() == 0 ? -1 : 2);
    final y = random.nextDouble() * (random.nextDouble() == 0 ? -1 : 7);

    final pin = Align(
      alignment: Alignment(
          x, y
      ),
      child: SetPins(showNumbers: showNumbers,),
    );

    pins.add(pin);
  }

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
    return Container(
      height: 50,
      width: showNumbers! == true ? null : 50,
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(8),
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8)),
      ),
      child: Center(
        child: showNumbers! ? const Icon(
          Icons.home_work_outlined,
          color: Colors.white,
        ) : const Text('11.45mmP'),
      ),
    );
  }
}