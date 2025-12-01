import 'package:flutter/material.dart';

class Lab9Screen extends StatelessWidget {
  const Lab9Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 9'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text('Лабораторна робота 9', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
