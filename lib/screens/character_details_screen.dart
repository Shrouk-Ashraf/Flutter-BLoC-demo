import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/models/character.dart';
import 'package:flutter_bloc_demo/widgets/buid_divider.dart';
import 'package:flutter_bloc_demo/widgets/character_info.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff343A40),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 600,
            pinned: true,
            stretch: true,
            floating: true,
            backgroundColor: const Color(0xff343A40),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                character.name,
                style: const TextStyle(color: Colors.white),
              ),
              background: Hero(
                  tag: character.id,
                  child: Image.network(
                    character.image,
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.all(24),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CharacterInfo(
                        title: 'Gender : ',
                        value: character.gender,
                      ),
                      const BuildDivider(
                        endIndent: 270,
                      ),
                      CharacterInfo(
                        title: 'Species : ',
                        value: character.species,
                      ),
                      const BuildDivider(
                        endIndent: 260,
                      ),
                      CharacterInfo(
                        title: 'Status : ',
                        value: character.status,
                      ),
                      const BuildDivider(
                        endIndent: 280,
                      ),
                      character.type.isNotEmpty
                          ? CharacterInfo(
                              title: 'Type : ',
                              value: character.type,
                            )
                          : Container(),
                      character.type.isNotEmpty
                          ? const BuildDivider(
                              endIndent: 285,
                            )
                          : Container(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
