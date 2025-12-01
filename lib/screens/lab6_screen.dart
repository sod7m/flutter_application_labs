import 'package:flutter/material.dart';

class Lab6Screen extends StatelessWidget {
  const Lab6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 6'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text('Лабораторна робота 6', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
