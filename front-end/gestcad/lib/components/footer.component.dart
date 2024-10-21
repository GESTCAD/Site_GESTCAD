import 'package:flutter/material.dart';

Widget footer(wscreen) {
  return Container(
    height: wscreen > 1400 ? 70 : 50,
    width: double.infinity,
    color: const Color(0xff00856F),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "@Equipe de desenvolvimento",
            style: TextStyle(
                color: Colors.white, fontSize: wscreen > 1400 ? 15 : 10),
          ),
          Text(
            "Unama parque shopping",
            style: TextStyle(
                color: Colors.white, fontSize: wscreen > 1400 ? 15 : 10),
          ),
        ],
      ),
    ),
  );
}
