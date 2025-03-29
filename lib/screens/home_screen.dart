import 'package:flutter/material.dart';
import 'package:game_app_ui/data/data.dart';
import 'package:game_app_ui/screens/widgets/title_and_dot_widget.dart';

import 'widgets/banner_widget.dart';
import 'widgets/bottom_shade_widget.dart';
import 'widgets/game_section_widget.dart';
import 'widgets/top_games_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _screenHeight;
  var _screenWidth;

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.sizeOf(context).height;
    _screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Feature games section
            SizedBox(
              height: _screenHeight * 0.5,
              width: _screenWidth,
              child: Stack(
                children: [
                  // Image
                  SizedBox(
                    height: _screenHeight * 0.5,
                    width: _screenWidth,
                    child: PageView.builder(
                      itemCount: featuredGames.length,
                      itemBuilder: (context, index) {
                        return Image.network(
                          featuredGames[index].coverImage.imageUrl,
                          fit: BoxFit.cover,
                        );
                      },
                      onPageChanged: (newIndex) {
                        setState(() {
                          _currentPage = newIndex;
                        });
                      },
                    ),
                  ),

                  // Gradient Shade
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BottomShadeWidget(
                        screenHeight: _screenHeight, screenWidth: _screenWidth),
                  ),

                  // Game Title
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: TitleAndDotWidget(
                        screenHeight: _screenHeight,
                        currentPage: _currentPage,
                        screenWidth: _screenWidth),
                  ),
                ],
              ),
            ),
            SizedBox(height: _screenHeight * 0.010),

            // Top games
            GameSectionWidget(
              screenHeight: _screenHeight,
              title: "Top Games",
            ),
            SizedBox(height: _screenHeight * 0.010),

            Padding(
              padding: EdgeInsets.only(left: _screenHeight * 0.010),
              child: SizedBox(
                height: _screenHeight * 0.30,
                child: TopGamesWidget(
                  screenHeight: _screenHeight,
                  screenWidth: _screenWidth,
                  gameData: games2,
                ),
              ),
            ),
            SizedBox(height: _screenHeight * 0.020),

            // Banner
            BannerWidget(
                screenHeight: _screenHeight, screenWidth: _screenWidth),
            SizedBox(height: _screenHeight * 0.020),

            // Simulator Games
            GameSectionWidget(
              screenHeight: _screenHeight,
              title: "Simulation Games",
            ),
            SizedBox(height: _screenHeight * 0.010),

            Padding(
              padding: EdgeInsets.only(left: _screenHeight * 0.010),
              child: SizedBox(
                height: _screenHeight * 0.30,
                child: TopGamesWidget(
                  screenHeight: _screenHeight,
                  screenWidth: _screenWidth,
                  gameData: games,
                ),
              ),
            ),
            SizedBox(height: _screenHeight * 0.010),
          ],
        ),
      ),
    );
  }
}
