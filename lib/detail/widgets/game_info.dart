import 'package:flutter/material.dart';
import 'package:gamestore/detail/widgets/review.dart';
import 'package:gamestore/models/game.dart';

import 'description.dart';
import 'gallery.dart';
import 'header_section.dart';

class GameInfo extends StatelessWidget {
  final Game game;

  const GameInfo(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          HeaderSection(game),
          GallerySection(game),
          DescriptionSection(game),
          ReviewSection(game)
        ],
      ),
    );
  }
}
