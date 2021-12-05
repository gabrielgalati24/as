import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/question_page.dart';
import 'package:flutter_application_1/widgets/aswer_card.dart';
import 'package:flutter_application_1/widgets/question_card.dart';

class HomaPage extends StatelessWidget {
  const HomaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const Drawer(),
      body: const CrearBody(),
    );
  }
}

class CrearBody extends StatelessWidget {
  const CrearBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuestionPage(
                  lienarprogres: 0,
                  // producto: productos[index],
                ),
              ),
            );
          },
          child: const QuestionCard(
            img: true,
          ),
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionPage(
                      // producto: productos[index],
                      ),
                ),
              );
            },
            child: QuestionCard(img: false),
          ),
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionPage(
                      // producto: productos[index],
                      ),
                ),
              );
            },
            child: QuestionCard(
              img: false,
            ),
          ),
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuestionPage(
                      // producto: productos[index],
                      ),
                ),
              );
            },
            child: QuestionCard(
              img: false,
            ),
          ),
        ),
      ],
    );
  }
}
