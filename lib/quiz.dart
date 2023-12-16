import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;
  
  @override
  Widget build(BuildContext context) {

    List quiz = [
    {
      "pergunta":"Quem descobriu o Brasil?",
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
    "pergunta":"O Flutter é uma linguagem?",
      "respostas": [
        "Uma Linguagem",
        "Um Aplicativo",
        "Um SDK",
        "Um Notebook",
      ],
      "alternativa_correta":3,
    }
  );

  int perguntaNumero = 2;

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
                  child: Text('Pergunta $perguntaNumero de 10', style: TextStyle(fontSize: 20))),

                 Text('Pergunta \n' + quiz[perguntaNumero -1]['pergunta'],
                 style: TextStyle(fontSize: 20)),
        
                 SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('1');
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][0], style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                    ),
                  ),
                ),
        
                SizedBox(
                   width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('2');
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][1], style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                    ),
                  ),
                ),
        
                SizedBox(
                   width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('3');
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][2], style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                    ),
                  ),
                ),
        
                SizedBox(
                   width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('4');
                    },
                    child: Text(quiz[perguntaNumero - 1]['respostas'][3], style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(60, 12, 60, 12),
                    ),
                  ),
                ),
        
              ],
              
            ),
          ),
        ),
      );
  }
}

