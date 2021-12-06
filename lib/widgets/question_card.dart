import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  String img;
  String title;
  QuestionCard({Key? key, required this.img, required this.title})
      : super(key: key);

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  // bool img = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Center(child: Text(widget.title)),
          Center(
              child: Image.asset(widget.img,
                  height: 120, width: 120, fit: BoxFit.fill)),
        ],
      ),
    );
  }
}
