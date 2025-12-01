import 'package:flutter/material.dart';

class Lab6Screen extends StatelessWidget {
  const Lab6Screen({super.key});

  // Розміри згідно варіанту 8
  static const double a = 150; // верхній відступ
  static const double d = 250; // висота нижнього контейнера
  // c = min (мінімальна висота)
  // i = min (мінімальний відступ)
  // h = 400; // ширина - адаптуємо до екрану
  // k = 250; // ширина контейнера - адаптуємо
  // m = 300; // ширина контейнера - адаптуємо

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // Адаптивні розміри для мобільного екрану
    final bottomContainerWidth = screenWidth * 0.6; // 60% ширини екрану

    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 6'),
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
                  // Жовтий контейнер (перший текст)
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Text(
                        'Ще не вмерла Україна, і слава, і воля, ще нам, браття українці, усміхнеться доля.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  // Відступ r між контейнерами
                  const SizedBox(width: 16),

                  // Синій контейнер (другий текст)
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[100],
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Text(
                        'Згинуть наші вороженьки, як роса на сонці, запануєм і ми, браття, у своїй сторонці.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Відступ c (мінімальний) + простір до нижнього контейнера
              const SizedBox(height: 80),

              // Нижній контейнер (справа)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: bottomContainerWidth,
                  height: d, // d = 250
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.yellow[50],
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Text(
                    'І покажем, що ми, браття, козацького роду.',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              // Нижній відступ
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
