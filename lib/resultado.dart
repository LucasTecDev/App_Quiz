import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;

  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
  static const routeName = 'Resultado';
  const Resultado({super.key,});

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('                              Quiz'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Text('Resultado',style: TextStyle(fontSize: 20)),
                 Text('Voce acertou\n${argumentos.acertos} de 10\n perguntas',style: TextStyle(fontSize: 20)),
                
                SizedBox(
                   width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Pressioando');
                      Navigator.pushNamed(context, 'Quiz');
                    },
                    child: Text('Jogar Novamente', style: TextStyle(fontSize: 30)),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    ),
                    
                  ),
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}