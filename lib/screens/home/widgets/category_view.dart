import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = [
    'Eventos da Semana',
    'O que você vende?',
    'Recomendados',
  ];

  int _category = 0;

  void selectForward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            disabledColor: Colors.white30,
            onPressed: _category > 0 ? selectBackward : null),
        Container(
          color: Colors.blue,
          child: Text(
            categories[_category].toUpperCase(),
            style: const TextStyle(
              fontSize: 22,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            color: Colors.white,
            disabledColor: Colors.white30,
            onPressed: _category < categories.length - 1 ? selectForward : null)
      ],
    );
  }
}
