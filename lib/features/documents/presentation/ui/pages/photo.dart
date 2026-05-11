import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FullScreenImagePage extends StatelessWidget {
  final String imageUrl;

  const FullScreenImagePage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    // 4. Створюємо Scaffold з прозорим AppBar для кнопки закриття
    return Scaffold(
      backgroundColor: Colors.black, // Чорний фон для фото
      extendBodyBehindAppBar: true, // AppBar буде поверх контенту
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Прозорий AppBar
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white, size: 30),
          // 5. Функція закриття екрана
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        // 6. Обгортаємо в Hero з ТИМ САМИМ тегом
        child: Hero(
          tag: imageUrl,
          // 7. Додаємо можливість зуму (масштабування)
          child: InteractiveViewer(
            panEnabled: true, // Дозволяє переміщати
            minScale: 0.5,
            maxScale: 4.0, // Максимальний зум
            child: Image.asset(
              imageUrl,
              fit: BoxFit.contain, // Вписуємо картинку повністю
            ),
          ),
        ),
      ),
    );
  }}