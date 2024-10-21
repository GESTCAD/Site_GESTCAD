import 'package:flutter/material.dart';

Widget buttonWithIconV2(
  double wscreen, {
  required Function ontap,
  IconData icon = Icons.arrow_outward,
  text = "Ir para o inicio",
}) {
  return Center(
    child: InkWell(
      onTap: () async => await ontap(),
      child: Container(
        height: 60,
        width: wscreen,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(top: BorderSide(color: Color(0xffE2E2E2), width: 1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, size: 40, color: const Color(0xff181725)),
            const SizedBox(width: 15),
            Text(text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff181725),
                    fontSize: wscreen > 700 ? 18 : 15)),
          ],
        ),
      ),
    ),
  );
}

Widget buttonWithIconV2Null(double wscreen) {
  return Center(
    child: Container(
      height: 60,
      width: wscreen,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border(
            top: BorderSide(color: Colors.black.withOpacity(.1), width: 1)),
      ),
    ),
  );
}