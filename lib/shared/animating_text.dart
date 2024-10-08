import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:realestate_ui/shared/utils/colors.dart';

class AnimatingText extends StatefulWidget {
  const AnimatingText({
    super.key,
    this.score,
    this.textColor
  });

  final double? score;
  final Color? textColor;

  @override
  State<AnimatingText> createState() => _AnimatingTextState();
}

class _AnimatingTextState extends State<AnimatingText> with TickerProviderStateMixin  {

  late AnimationController scoreProgressController;
  late Animation<double> scoreProgressAnimation;

  int fontSizeUpdate = 24;

  @override
  void initState() {

    scoreProgressController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    scoreProgressController.forward();

    scoreProgressController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //////anything
        fontSizeUpdate = 33;
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    scoreProgressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    CurvedAnimation curvedAnimation =
    CurvedAnimation(parent: scoreProgressController, curve: Curves.linear);

    scoreProgressAnimation = Tween<double>(
      begin: 0,
      end: widget.score ?? 0.0,
    ).animate(curvedAnimation);

    return AnimatedBuilder(
      animation: scoreProgressController,
      builder: (BuildContext context, Widget? child) {

        var score = scoreProgressAnimation.value.toStringAsFixed(0);
        print(scoreProgressAnimation.value);

        if (scoreProgressController.status != AnimationStatus.completed) {
          score = scoreProgressAnimation.value.toStringAsFixed(0);
        }

        return Text(
          score,
          maxLines: 3,
          style: TextStyle(
            fontSize: fontSizeUpdate.toDouble(),
            color: widget.textColor ?? secondaryColor,
            fontWeight: FontWeight.w700,
          ),
        );
      },
    );
  }
}