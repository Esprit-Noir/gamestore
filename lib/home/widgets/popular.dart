import 'package:flutter/material.dart';
import 'package:gamestore/detail/detail.dart';

import '../../models/game.dart';


class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index)=> GestureDetector(
            onTap: (() => Navigator.of(context).push(MaterialPageRoute(
                builder: ((context)=>DetailPage(games[index])),
            ))),
            child: Card(
              elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Hero(tag: games[index].name, child: Image.asset(games[index].bgImages)),
                  ),
                ),

            ),
          )),
          separatorBuilder: ((context, index)=>const SizedBox(width: 10,)),
          itemCount: games.length
      ),
    );
  }
}
