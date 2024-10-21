import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

Widget buttonWithIcon(
  double wscreen, {
  marginHorizontal = 0,
  marginVertical = 0,
  required Function ontap,
  IconData icon = Icons.arrow_outward,
  text = "Ir para o inicio",
  Color color = const Color(0xff53B175),
}) {
  return Center(
    child: InkWell(
      onTap: () async => await ontap(),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: marginHorizontal, vertical: marginVertical),
        height: wscreen > 1400 ? 60 : 50,
        width: wscreen,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05), // Cor da sombra
              blurRadius: 5, // Desfocamento
              offset: const Offset(0, 5), // Deslocamento horizontal e vertical
            ),
          ],
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              text,
              style: TextStyle(
                  color: Colors.white, fontSize: wscreen > 1400 ? 16 : 12),
            ),
            const SizedBox(width: 15),
            Icon(
              icon,
              color: Colors.white,
            ),
          ],
        ),
      ),
    ),
  );
}
