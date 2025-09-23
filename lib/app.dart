import 'package:flutter/material.dart';
import 'dart:math';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  var imagens = [
    Image.asset("imagens/moeda_cara.png",width: 400, height: 200),
    Image.asset("imagens/moeda_coroa.png", width: 400, height: 200)
  ];

  @override
  Widget build(BuildContext context) {

    var resultado = imagens[Random().nextInt(imagens.length)];

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xff61bd86),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: resultado,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("imagens/botao_voltar.png", width: 200, height: 200)
            )
          ],
        ),
      ),
    );
  }
}
