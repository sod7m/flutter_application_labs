import 'package:flutter/material.dart';

/// Власний віджет TextCard, успадкований від StatelessWidget
/// Приймає дані через параметри конструктора
class TextCard extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final double? width;
  final double? height;
  final EdgeInsets padding;
  final double borderRadius;

  const TextCard({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.borderColor = Colors.black,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: BorderSide(color: borderColor, width: 2),
      ),
      color: backgroundColor,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class Lab8Screen extends StatelessWidget {
  const Lab8Screen({super.key});

  // Розміри згідно варіанту 8
  static const double a = 150; // верхній відступ
  static const double d = 250; // висота нижнього контейнера

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bottomContainerWidth = screenWidth * 0.6;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 8'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Верхній відступ a = 150
              const SizedBox(height: a),

              // Рядок з двома контейнерами (жовтий і синій)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Жовтий контейнер - використовуємо власний віджет TextCard
                  Expanded(
                    child: TextCard(
                      text:
                          'Ще не вмерла Україна, і слава, і воля, ще нам, браття українці, усміхнеться доля.',
                      backgroundColor: Colors.yellow,
                      borderColor: Colors.orange,
                      borderRadius: 16,
                    ),
                  ),

                  const SizedBox(width: 16),

                  // Синій контейнер - використовуємо власний віджет TextCard
                  Expanded(
                    child: TextCard(
                      text:
                          'Згинуть наші вороженьки, як роса на сонці, запануєм і ми, браття, у своїй сторонці.',
                      backgroundColor: Colors.lightBlue.shade100,
                      borderColor: Colors.blue,
                      borderRadius: 16,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 80),

              // Нижній контейнер (справа) - використовуємо власний віджет TextCard
              Align(
                alignment: Alignment.centerRight,
                child: TextCard(
                  text: 'І покажем, що ми, браття, козацького роду.',
                  backgroundColor: Colors.yellow.shade50,
                  borderColor: Colors.amber,
                  width: bottomContainerWidth,
                  height: d,
                  borderRadius: 20,
                ),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
