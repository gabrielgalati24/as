import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/aswer_card.dart';

class QuestionPage extends StatelessWidget {
  QuestionPage({Key? key}) : super(key: key);
  int respuesa = 1;
  bool selecionable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: LinearProgressIndicator(
                value: .50,
                backgroundColor: Colors.grey,
              ),
            ),
            Text('Question'),
            Image.asset('assets/images/manod.jpg'),
            Container(
                padding: EdgeInsets.all(16), child: AswerCard(respuesta: true)),
            Container(
                padding: EdgeInsets.all(16),
                child: AswerCard(
                  respuesta: false,
                )),
            Container(
                padding: EdgeInsets.all(16),
                child: AswerCard(
                  respuesta: false,
                )),
            Container(
                padding: EdgeInsets.all(16),
                child: AswerCard(
                  respuesta: false,
                )),
          ],
        ),
      ),
    );
  }
}
