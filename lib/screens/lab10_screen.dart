import 'package:flutter/material.dart';

class Lab10Screen extends StatelessWidget {
  const Lab10Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 10'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text('Лабораторна робота 10', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
