import 'package:app_quiz/resultado.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  
  @override
  Widget build(BuildContext context) {

      int perguntaNumero = 1;
      int acertos = 0;
      int erros = 0;

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
    });

    for (int i = 3; i <= 20; i++) {
      quiz.add({
        "pergunta": "Pergunta $i",
        "respostas": [
          "Resposta 1",
          "Resposta 2",
          "Resposta 3",
          "Resposta 4",
        ],
        "alternativa_correta": 1,
      });
    }
    print('Dados do Quiz');

  void respondeu(int respostaNumero) {
    setState(() {
      if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
        print('acertou');
        acertos++;
      } else {
        print('errou');
        erros++;
      }

      print('acertos totais: $acertos erros totais: $erros');

      if (perguntaNumero == 10) {
        print('Terminou o Quiz');
        Navigator.pushNamed(context, 'Resultado', arguments: Argumentos(acertos));
      } else {
        perguntaNumero++;
      }
    });
  }

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
                      respondeu(1);
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
                      respondeu(2);
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
                      respondeu(3);
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
                      respondeu(4);
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

