import 'package:flutter/material.dart';
import 'package:gestcad/components/calendario.component.dart';
import 'package:gestcad/components/equipe_visao_geral.component.dart';
import 'package:gestcad/components/footer.component.dart';
import 'package:gestcad/components/header.component.dart';
import 'package:gestcad/components/button_with_icon.component.dart';
import 'package:gestcad/components/icon_perfil_profissional.dart';
import 'package:gestcad/components/painel_acesso_geral.component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool stateButton = false;
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  ScrollController controllerScroll1 = ScrollController();
  ScrollController controllerScroll2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    double wscreen = MediaQuery.of(context).size.width;
    // double screenSize = wscreen > 500 ? 500 : wscreen;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            header(wscreen),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      flex: 30,
                      child: Column(
                        children: [
                          SizedBox(height: wscreen > 1400 ? 40 : 20),
                          Center(
                              child: Text("Painel de acessos",
                                  style: TextStyle(
                                      fontSize: wscreen > 1400 ? 20 : 15,
                                      fontWeight: FontWeight.bold))),
                          const SizedBox(height: 10),
                          painelAcessoGeral(wscreen,
                              controllerScroll2: controllerScroll2),
                          const SizedBox(height: 10),
                          Center(
                              child: Text("Equipe visão geral",
                                  style: TextStyle(
                                      fontSize: wscreen > 1400 ? 20 : 15,
                                      fontWeight: FontWeight.bold))),
                          const SizedBox(height: 10),
                          equipeVisaoGeral(wscreen,
                              controllerScroll1: controllerScroll1)
                        ],
                      )),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 70,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: const Center(
                              child: Text(
                                "MANHÃ-TARDE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff60605E)),
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 100,
                            child: ColorfulTable(
                              markers: [
                                {
                                  'profissional': 'Marco',
                                  'paciente': 'Dudu',
                                  'dia_da_semana': 'qua',
                                  'horario': '08:00',
                                },
                                {
                                  'profissional': 'Marco',
                                  'paciente': 'Dudu',
                                  'dia_da_semana': 'qua',
                                  'horario': '13:00',
                                },
                                {
                                  'profissional': 'Marco',
                                  'paciente': 'Dudu',
                                  'dia_da_semana': 'qua',
                                  'horario': '13:00',
                                },
                                {
                                  'profissional': 'Maria',
                                  'paciente': 'João',
                                  'dia_da_semana': 'ter',
                                  'horario': '10:00',
                                },
                              ],
                            ),
                          ),
                        ],
                      )),
                  Expanded(flex: 1, child: Container())
                ],
              ),
            ),
            footer(wscreen)
          ],
        ),
      ),
    );
  }
}
