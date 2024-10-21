import 'package:flutter/material.dart';
import 'package:gestcad/components/button_with_icon.component.dart';

Widget painelAcessoGeral(wscreen,
    {required ScrollController controllerScroll2}) {
  return Expanded(
    flex: wscreen > 1400 ? 40 : 60,
    child: SizedBox(
        width: double.infinity,
        child: Scrollbar(
          controller: controllerScroll2,
          trackVisibility: true,
          thumbVisibility: true,
          child: SingleChildScrollView(
            controller: controllerScroll2,
            child: Column(children: [
              buttonWithIcon(wscreen > 1300 ? 400 : wscreen,
                  marginHorizontal: wscreen > 1300 ? 80 : 20,
                  marginVertical: 5,
                  ontap: () {},
                  icon: Icons.calendar_month,
                  text: "Marca/Altera consulta",
                  color: const Color(0xff00856F)),
              buttonWithIcon(wscreen > 1300 ? 400 : wscreen,
                  marginHorizontal: wscreen > 1300 ? 80 : 20,
                  marginVertical: 5,
                  ontap: () {},
                  icon: Icons.assignment_ind_sharp,
                  text: "Registrar/Edita Profiss.",
                  color: const Color(0xff00856F)),
              buttonWithIcon(wscreen > 1300 ? 400 : wscreen,
                  marginHorizontal: wscreen > 1300 ? 80 : 20,
                  marginVertical: 5,
                  ontap: () {},
                  icon: Icons.check_circle,
                  text: "Fazer check-in",
                  color: const Color(0xff00856F)),
              buttonWithIcon(wscreen > 1300 ? 400 : wscreen,
                  marginHorizontal: wscreen > 1300 ? 80 : 20,
                  marginVertical: 5,
                  ontap: () {},
                  icon: Icons.article,
                  text: "Gerar relatorio",
                  color: const Color(0xff00856F)),
            ]),
          ),
        )),
  );
}
