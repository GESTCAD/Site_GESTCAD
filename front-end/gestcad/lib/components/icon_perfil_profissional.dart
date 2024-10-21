import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget iconPerfilProfissional(wscreen,
    {Color color = const Color(0xff00856F),
    text = 'Lorem ipsun dollor',
    subText = 'Lorem ipsun dollor'}) {
  return Container(
    margin:
        EdgeInsets.symmetric(vertical: 10, horizontal: wscreen > 1300 ? 80 : 0),
    height: wscreen > 1400 ? 80 : 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: wscreen > 1400 ? 80 : 60,
          width: wscreen > 1400 ? 80 : 60,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Center(
            child: Icon(
              Icons.badge,
              color: Colors.white,
              size: wscreen > 1400 ? 40 : 30,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText(
                text,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              AutoSizeText(subText,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w400)),
            ],
          ),
        )
      ],
    ),
  );
}
