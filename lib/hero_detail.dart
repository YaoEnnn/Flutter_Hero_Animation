import 'package:flutter/material.dart';

class HeroDetail extends StatelessWidget{
  HeroDetail({super.key, required this.image, required this.description});

  String image;
  String description;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hero Detail'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 300,),
              Hero(
                tag: image,
                  child: Image.asset(image, width: 100, height: 100)),
              Text(description, style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),)
            ],
          ),
        ),
      ),
    );
  }

}