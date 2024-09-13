import 'package:extinct/domain/animal/animal.dart';
import 'package:flutter/material.dart';

class AnimalView extends StatelessWidget {
  final Animal animal;

  const AnimalView({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/slider/${animal.assetName}'),
          Text(animal.name)
        ],
      ),
    );
  }
}
