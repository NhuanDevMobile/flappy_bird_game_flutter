import 'package:flappy_bird_game/src/models/models.dart';
import 'package:flappy_bird_game/src/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlappyBirdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PlayerExperience>(
          create: (_) => PlayerExperience(),
        ),
      ],
      child: MaterialApp(
        title: 'Flappy Bird',
        debugShowCheckedModeBanner: false,
        home: const GameScreen(),
      ),
    );
  }
}
