import 'package:flutter/material.dart';

class FinalQuestionsPage extends StatelessWidget {
  const FinalQuestionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Resultado Final"),
          const Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: CircularProgressIndicator(
                value: .75,
                // valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
          const Text("3/5"),
          MaterialButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              elevation: 0.3,
              onPressed: () {
                Navigator.pushReplacementNamed(context, "home");
              },
              child: const Text("Volver a la pantalla inicial")),
        ],
      ),
    );
  }
}
