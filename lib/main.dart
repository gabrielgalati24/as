import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/pregunta.dart';
import 'package:flutter_application_1/pages/final_questions_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/question_page.dart';
import 'package:flutter_application_1/provider/pregunta_provider.dart';
import 'package:flutter_application_1/services/pregunta_service.dart';

import 'provider/theme_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Light & Dark Theme';

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // lazy: true,
          create: (_) {
            PreguntaProvider();
          },
        ),
        // ChangeNotifierProvider(
        //   create: (context) => themeProvider,
        // ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        // themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        // darkTheme: MyThemes.darkTheme,
        initialRoute: 'result',
        routes: {
          'home': (_) => HomaPage(),
          'question': (_) => QuestionPage(),
          'result': (_) => FinalQuestionsPage(),
        },
      ),
    );
  }
}
