import 'package:flutter/material.dart';
import 'package:game_app_ui/data/data.dart';

class TopGamesWidget extends StatelessWidget {
  const TopGamesWidget({
    super.key,
    required screenHeight,
    required screenWidth,
    required this.gameData,
  })  : _screenHeight = screenHeight,
        _screenWidth = screenWidth;

  final dynamic _screenHeight;
  final dynamic _screenWidth;
  final List<Game> gameData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: gameData.length,
      itemBuilder: (context, index) {
        return Container(
          height: _screenHeight * 0.30,
          width: _screenWidth * 0.40,
          margin: EdgeInsets.only(
            right: _screenHeight * 0.015,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: _screenHeight * 0.25,
                width: _screenWidth,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(_screenHeight * 0.010),
                ),
                child: Image.network(
                  gameData[index].coverImage.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                gameData[index].title,
                style: TextStyle(color: Colors.white, fontSize: 14),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        );
      },
    );
  }
}
