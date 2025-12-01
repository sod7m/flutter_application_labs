import 'package:flutter/material.dart';
import 'screens/lab6_screen.dart';
import 'screens/lab7_screen.dart';
import 'screens/lab8_screen.dart';
import 'screens/lab9_screen.dart';
import 'screens/lab10_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лабораторні роботи',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class LabItem {
  final int number;
  final String title;
  final String description;
  final Widget screen;

  const LabItem({
    required this.number,
    required this.title,
    required this.description,
    required this.screen,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final List<LabItem> labs = [
    const LabItem(
      number: 6,
      title: 'Лабораторна робота 6',
      description: 'Опис лабораторної роботи 6',
      screen: Lab6Screen(),
    ),
    const LabItem(
      number: 7,
      title: 'Лабораторна робота 7',
      description: 'Опис лабораторної роботи 7',
      screen: Lab7Screen(),
    ),
    const LabItem(
      number: 8,
      title: 'Лабораторна робота 8',
      description: 'Опис лабораторної роботи 8',
      screen: Lab8Screen(),
    ),
    const LabItem(
      number: 9,
      title: 'Лабораторна робота 9',
      description: 'Опис лабораторної роботи 9',
      screen: Lab9Screen(),
    ),
    const LabItem(
      number: 10,
      title: 'Лабораторна робота 10',
      description: 'ListView - Українські гетьмани',
      screen: Lab10Screen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторні роботи 6-10'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: labs.length,
        itemBuilder: (context, index) {
          final lab = labs[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Text(
                  '${lab.number}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                lab.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(lab.description),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => lab.screen),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
