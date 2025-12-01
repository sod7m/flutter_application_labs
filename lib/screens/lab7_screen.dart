import 'package:flutter/material.dart';

class Lab7Screen extends StatelessWidget {
  const Lab7Screen({super.key});

  // Розміри згідно варіанту 8
  static const double a = 33; // відступ зверху (зелений-блакитний)
  static const double b = 43; // відступ (блакитний-фіолетовий)
  static const double c = 62; // висота фіолетового тексту

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 7'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: 360,
            height: 300,
            child: Stack(
              children: [
                // 1. Жовтий прямокутник
                Positioned(
                  left: 0,
                  top: 0,
                  width: 300,
                  height: 280,
                  child: Container(color: Colors.yellow),
                ),

                // 2. Зелений прямокутник (поверх жовтого, з відступом зліва і зверху)
                Positioned(
                  left: 20,
                  top: 20,
                  width: 280,
                  height: 260,
                  child: Container(color: Colors.green),
                ),

                // 3. Блакитний прямокутник (більший відступ зліва)
                Positioned(
                  left: 60,
                  top: 40,
                  width: 240,
                  height: 240,
                  child: Container(color: Colors.lightBlue),
                ),

                // 4. Фіолетовий прямокутник з текстом (ще більший відступ зліва)
                Positioned(
                  left: 100,
                  top: 60,
                  width: 200,
                  height: 220,
                  child: Container(
                    color: Colors.purple[200],
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'I love\n',
                            style: TextStyle(
                              fontSize: 26,
                              fontStyle: FontStyle.italic,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: 'programing',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.cyan,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
