import 'package:flutter/material.dart';

/// Власний віджет InteractiveTextCard, успадкований від StatefulWidget
/// Приймає дані через параметри конструктора
class InteractiveTextCard extends StatefulWidget {
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final double? width;
  final double? height;
  final double borderRadius;

  const InteractiveTextCard({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.borderColor = Colors.black,
    this.width,
    this.height,
    this.borderRadius = 12,
  });

  @override
  State<InteractiveTextCard> createState() => _InteractiveTextCardState();
}

class _InteractiveTextCardState extends State<InteractiveTextCard> {
  bool _isPressed = false;
  int _tapCount = 0;

  void _onTap() {
    setState(() {
      _tapCount++;
    });
  }

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: widget.width,
        height: widget.height,
        transform: Matrix4.identity()..scale(_isPressed ? 0.95 : 1.0),
        transformAlignment: Alignment.center,
        child: Card(
          elevation: _isPressed ? 2 : 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            side: BorderSide(color: widget.borderColor, width: 2),
          ),
          color: widget.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Натиснуто: $_tapCount',
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Lab9Screen extends StatelessWidget {
  const Lab9Screen({super.key});

  static const double a = 150;
  static const double d = 200;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final bottomContainerWidth = screenWidth * 0.65;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Лабораторна робота 9'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: a),

              // Два контейнери поруч
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: InteractiveTextCard(
                        text:
                            'Ще не вмерла Україна, і слава, і воля, ще нам, браття українці, усміхнеться доля.',
                        backgroundColor: Colors.yellow,
                        borderColor: Colors.orange,
                        borderRadius: 16,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: InteractiveTextCard(
                        text:
                            'Згинуть наші вороженьки, як роса на сонці, запануєм і ми, браття, у своїй сторонці.',
                        backgroundColor: Colors.lightBlue.shade100,
                        borderColor: Colors.blue,
                        borderRadius: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80),

              // Нижній контейнер справа
              Align(
                alignment: Alignment.centerRight,
                child: InteractiveTextCard(
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
