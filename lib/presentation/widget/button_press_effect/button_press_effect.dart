import 'package:flutter/material.dart';

class ButtonPressEffect extends StatelessWidget {
  final Function onPress;
  final Widget child;

  const ButtonPressEffect({
    super.key,
    required this.onPress,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: child,
      onTap: () {
        onPress();
      },
    );
  }
}
