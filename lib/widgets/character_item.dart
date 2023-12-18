import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/models/character.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({required this.character, super.key});

  final Character character;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.all(8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: const Color(0xffE1e8eb),
        borderRadius: BorderRadius.circular(8),
      ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 15, vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            character.name,
            style: const TextStyle(
              height: 1.8,
              fontSize: 16,
              color: Color(0xffE1e8eb),
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        child: Container(
            color: const Color(0xff343A40),
            child: character.image.isNotEmpty
                ? FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: 'assets/images/loading.gif',
                    image: character.image,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/placeholder.png')),
      ),
    );
  }
}
