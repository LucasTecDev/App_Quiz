import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('                              Quiz'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(child: Image.asset('assets/images/icon_logo_quiz.png'), height: 350, width: 350,),
              ElevatedButton(
                onPressed: () {
                  print('Pressioando');
                },
                child: Text('Jogar', style: TextStyle(fontSize: 50)),
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