import 'package:flutter/material.dart';

class Lab7Screen extends StatelessWidget {
  const Lab7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 7'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text('Лабораторна робота 7', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
