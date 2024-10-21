import 'package:flutter/material.dart';
import 'package:gestcad/components/icon_perfil_profissional.dart';

Widget equipeVisaoGeral(wscreen,
    {required ScrollController controllerScroll1}) {
  return Expanded(
      flex: 50,
      child: Scrollbar(
        controller: controllerScroll1,
        trackVisibility: true,
        thumbVisibility: true,
        child: ListView.builder(
            controller: controllerScroll1,
            itemCount: 5,
            itemBuilder: (
              context,
              index,
            ) {
              return iconPerfilProfissional(wscreen,
                  color: const Color(0xff00856F),
                  text: "Lorem ipsun dollor",
                  subText: "Lorem ipsun dollor");
            }),
      ));
}
