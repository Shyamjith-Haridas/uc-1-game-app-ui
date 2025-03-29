import 'package:flutter/material.dart';

class GameSectionWidget extends StatelessWidget {
  const GameSectionWidget({
    super.key,
    required screenHeight,
    required this.title,
  }) : _screenHeight = screenHeight;

  final dynamic _screenHeight;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: _screenHeight * 0.010),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
