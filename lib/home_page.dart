import 'package:flutter/material.dart';
import 'package:hero_animation/hero_detail.dart';
import 'package:hero_animation/hero_tile.dart';
import 'package:hero_animation/model/hero.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<MyHero> heroList = [
    MyHero(
        name: 'Black Widow',
        image: 'asset/black_widow.png',
        description: 'Black Widow Hero!!!'),
    MyHero(
        name: 'Captain America',
        image: 'asset/captain_america.png',
        description: 'Captain America Hero!!!'),
    MyHero(name: 'Hulk', image: 'asset/hulk.png', description: 'Hulk Hero!!!'),
    MyHero(
        name: 'Iron Man',
        image: 'asset/iron_man.png',
        description: 'Iron Man Hero!!!'),
    MyHero(name: 'Loki', image: 'asset/loki.png', description: 'Loki Hero!!!'),
    MyHero(
        name: 'Nick Fury',
        image: 'asset/nick_fury.png',
        description: 'Nick Fury Hero!!!'),
    MyHero(name: 'Thor', image: 'asset/thor.png', description: 'Thor Hero!!!'),
    MyHero(
        name: 'War Machine',
        image: 'asset/war_machine.png',
        description: 'War Machine Hero!!!'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('HERO!!')),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: heroList.length,
            itemBuilder: (context, index) => HeroTile(
              image: heroList[index].image,
              name: heroList[index].name,
              description: heroList[index].description,
            ),
          ),
        ),
      ),
    );
  }
}
