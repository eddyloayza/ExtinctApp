import 'package:extinct/domain/animal/animal.dart';
import 'package:extinct/presentation/animal/animal.view.dart';
import 'package:extinct/presentation/widgets/app_bar_leading_button/app_bar_leading_button.dart';
import 'package:flutter/material.dart';

final animals = <Animal>[
  Animal(name: 'Dodo', assetName: 'dodo_img.png', extinctYear: 1530),
  Animal(name: 'Thylacine', assetName: 'thylacine_img.png', extinctYear: 1530),
  Animal(name: 'Quagga', assetName: 'quagga_img.png', extinctYear: 1530),
  Animal(
      name: 'Passenger Pigeon', assetName: 'pigeon_img.png', extinctYear: 1530),
  Animal(
      name: 'Pinta Gian Tortoise',
      assetName: 'tortoise_img.png',
      extinctYear: 1530),
  Animal(name: 'Bucardo', assetName: 'bucardo_img.png', extinctYear: 1530),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBarLeadingButton(
          icon: Icons.menu,
          onTap: () {
            //print('>>> Push Leading Button...');
          },
        ),
      ),
      body: Stack(
        children: [
          PageView(
            children: animals.map((e) => AnimalView(animal: e)).toList(),
          ),
          Positioned(
              bottom: MediaQuery.of(context).padding.bottom,
              right: 0,
              left: 0,
              child: const Column(
                children: [
                  Icon(Icons.keyboard_arrow_down),
                  Text('Talk to me'),
                ],
              ))
        ],
      ),
    );
  }
}
