import 'package:flutter/material.dart';
import 'package:hero_animation/hero_detail.dart';

class HeroTile extends StatelessWidget{
  HeroTile({
    super.key,
    required this.image,
    required this.name,
    required this.description});

  final String image;
  final String name;
  final String description;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>
        HeroDetail(image: image, description: description)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
        decoration: BoxDecoration(
          color: const Color(0xffececec),
          borderRadius: BorderRadius.circular(10)
        ),
        width: 50,
        height: 80,
        child: Row(
          children: [
            Hero(
                tag: image,
                child: Image.asset(image, width: 60, height: 60,)),
            const SizedBox(width: 20),
            Text(name, style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          ],
        ),
      ),
    );
  }
}