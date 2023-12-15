import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {

    List quiz = [
    {
      "Pergunta":"Quem descobriu o Brasil?",
      "respostas": [
        "Dom Pedro",
        "Pedro Álvares Cabral",
        "Tiradentes",
        "Dom Pedro II",
      ],
      "alternativa_correta":2,
    }
  ];
  
  quiz.add(
    {
    "Pergunta":"O Flutter é um linguagem?",
      "respostas": [
        "Uma Linguagem",
        "Aplicativo",
        "SDK",
        "Notebook",
      ],
      "alternativa_correta":3,
    }
  );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('                              Quiz'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text('Pergunta 1 de 10', style: TextStyle(fontSize: 20))),
                 Text('Pergunta',style: TextStyle(fontSize: 20)),
        
                ElevatedButton(
                  onPressed: () {
                    print('1');
                  },
                  child: Text('Resposta 1', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                  ),
                ),
        
                ElevatedButton(
                  onPressed: () {
                    print('2');
                  },
                  child: Text('Resposta 2', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                  ),
                ),
        
                ElevatedButton(
                  onPressed: () {
                    print('3');
                  },
                  child: Text('Resposta 3', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                  ),
                ),
        
                ElevatedButton(
                  onPressed: () {
                    print('4');
                  },
                  child: Text('Resposta 4', style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                  ),
                ),
        
              ],
              
            ),
          ),
        ),
      );
  }
}

