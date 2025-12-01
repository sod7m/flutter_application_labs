import 'package:flutter/material.dart';

class Lab8Screen extends StatelessWidget {
  const Lab8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 8'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text('Лабораторна робота 8', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
