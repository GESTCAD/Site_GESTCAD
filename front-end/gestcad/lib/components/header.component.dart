import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget header(wscreen) {
  return Container(
    width: double.infinity,
    height: wscreen > 1400 ? 100 : 70,
    decoration: BoxDecoration(color: const Color(0xff25363E), boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2), // Cor da sombra com opacidade
        spreadRadius: 1, // Expansão da sombra
        blurRadius: 8, // Suavidade da sombra
        offset: const Offset(0, 4), // Posição da sombra (horizontal, vertical)
      )
    ]),
    child: Row(
      children: [
        Expanded(
            flex: wscreen > 1200 ? 40 : 50,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/logoUnama.png"))),
            )),
        Expanded(
            flex: 20,
            child: Center(
              child: AutoSizeText(
                "Agenda",
                style: TextStyle(
                    fontSize: wscreen > 1400 ? 20 : 16, color: Colors.white),
              ),
            )),
        Expanded(flex: wscreen > 1200 ? 60 : 30, child: Container()),
        Expanded(
            flex: 100,
            child: Align(
                alignment: const Alignment(0.7, 0),
                child: AutoSizeText(
                  "Clínica Escola de Fisioterapia",
                  style: TextStyle(
                      fontSize: wscreen > 1400 ? 25 : 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ))),
      ],
    ),
  );
}
