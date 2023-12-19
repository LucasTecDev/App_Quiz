import 'package:app_quiz/homepage.dart';
import 'package:app_quiz/quiz.dart';
import 'package:app_quiz/resultado.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(Resultado(acertos: 3,));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => HomePage(),
        'Quiz' :(context) => Quiz(),
        Resultado.routeName :(context) => Resultado()
      },
    );
  }
}