import 'package:flutter/material.dart';

import '../../data/data.dart';

class TitleAndDotWidget extends StatelessWidget {
  const TitleAndDotWidget({
    super.key,
    required screenHeight,
    required int currentPage,
    required screenWidth,
  })  : _screenHeight = screenHeight,
        _currentPage = currentPage,
        _screenWidth = screenWidth;

  final dynamic _screenHeight;
  final int _currentPage;
  final dynamic _screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _screenHeight * 0.015,
        vertical: _screenHeight * 0.015,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            featuredGames[_currentPage].title,
            style: TextStyle(
              color: Colors.white,
              fontSize: _screenHeight * 0.025,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: List.generate(
              featuredGames.length,
              (index) {
                final dotSize = _screenHeight * 0.007;
                return Container(
                  height: dotSize,
                  width: dotSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == _currentPage ? Colors.teal : Colors.white,
                  ),
                  margin: EdgeInsets.only(left: _screenWidth * 0.010),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
