import 'package:flutter/material.dart';
import 'app.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void jogar(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => App()));
  }

  @override
  Widget build(BuildContext context) {
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
              child: Image.asset("imagens/logo.png", width: 400, height: 200),
            ),
            GestureDetector(
              onTap: jogar,
              child: Image.asset("imagens/botao_jogar.png", width: 200, height: 200)
            )
          ],
        ),
      ),
    );
  }
}
