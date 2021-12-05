import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/aswer_card.dart';

class QuestionPage extends StatelessWidget {
  double? lienarprogres;
  QuestionPage({Key? key, @required this.lienarprogres}) : super(key: key);
  int respuesa = 1;
  bool selecionable = true;
  @override
  Widget build(BuildContext context) {
    // print(lienarprogres);
    // print("/////////////////");
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
                value: lienarprogres ?? 0,
                backgroundColor: Colors.grey,
              ),
            ),
            Text('Question'),
            Image.asset('assets/images/manod.jpg'),
            Container(
                padding: EdgeInsets.all(16),
                child: AswerCard(
                  respuesta: true,
                  preguntaId: 1,
                  lienarprogres: lienarprogres,
                )),
            Container(
                padding: EdgeInsets.all(16),
                child: AswerCard(
                  respuesta: false,
                  preguntaId: 2,
                  lienarprogres: lienarprogres,
                )),
            Container(
                padding: EdgeInsets.all(16),
                child: AswerCard(
                  respuesta: false,
                  preguntaId: 3,
                  lienarprogres: lienarprogres,
                )),
            Container(
                padding: EdgeInsets.all(16),
                child: AswerCard(
                  respuesta: false,
                  preguntaId: 4,
                  lienarprogres: lienarprogres,
                )),
          ],
        ),
      ),
    );
  }
}
