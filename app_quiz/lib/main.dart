import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

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
              FlutterLogo(size: 200,),
              ElevatedButton(
                onPressed: () {
                  print('Pressioando');
                },
                child: Text('Jogar', style: TextStyle(fontSize: 50)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
                
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}