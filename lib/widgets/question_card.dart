import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({Key? key, img}) : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool img = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Center(child: Text("Letras")),
          Center(
              child: img
                  ? Image.asset('assets/images/letras.jpg')
                  : const Text('No hay imagen')),
        ],
      ),
    );
  }
}
