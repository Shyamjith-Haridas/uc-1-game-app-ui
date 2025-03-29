import 'package:flutter/material.dart';

class BottomShadeWidget extends StatelessWidget {
  const BottomShadeWidget({
    super.key,
    required screenHeight,
    required screenWidth,
  })  : _screenHeight = screenHeight,
        _screenWidth = screenWidth;

  final dynamic _screenHeight;
  final dynamic _screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _screenHeight * 0.020,
      width: _screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          stops: [0.15, 1.0],
        ),
      ),
    );
  }
}
