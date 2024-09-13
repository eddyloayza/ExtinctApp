import 'package:extinct/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xfffeddbe);

class ExtinctApp extends StatelessWidget {
  const ExtinctApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extinct',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
