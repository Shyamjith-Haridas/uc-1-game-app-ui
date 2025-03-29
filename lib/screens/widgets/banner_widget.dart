import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required screenHeight,
    required screenWidth,
  })  : _screenHeight = screenHeight,
        _screenWidth = screenWidth;

  final dynamic _screenHeight;
  final dynamic _screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _screenHeight * 0.010,
      ),
      child: SizedBox(
        height: _screenHeight * .25,
        width: _screenWidth,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_screenHeight * 0.010),
          child: Image.network(
            "https://ansplayer.com/wp-content/uploads/2024/02/fifa-24.jpg",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
