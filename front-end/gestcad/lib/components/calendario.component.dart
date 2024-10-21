import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ColorfulTable extends StatefulWidget {
  final List<Map<String, dynamic>> markers;

  const ColorfulTable({super.key, required this.markers});

  @override
  State<ColorfulTable> createState() => _ColorfulTableState();
}

class _ColorfulTableState extends State<ColorfulTable>
    with SingleTickerProviderStateMixin {
  ScrollController controllerScroll = ScrollController();
  late AnimationController _animationController;
  late Animation<double> _pulseAnimation;

  List horarios = [
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true); // A animação repetirá para frente e para trás.

    _pulseAnimation = Tween<double>(begin: 5.0, end: 10.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double cellWidth = constraints.maxWidth / 5;

        return Column(
          children: [
            // Cabeçalho fixo (não rola)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(
                border: TableBorder.all(color: Colors.transparent),
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                  4: FlexColumnWidth(),
                },
                children: [
                  TableRow(
                    decoration: const BoxDecoration(color: Colors.transparent),
                    children: [
                      buildHeaderCell('Seg'),
                      buildHeaderCell('Ter'),
                      buildHeaderCell('Qua'),
                      buildHeaderCell('Qui'),
                      buildHeaderCell('Sex'),
                    ],
                  ),
                ],
              ),
            ),
            // Corpo da tabela (rola verticalmente)
            Expanded(
              child: Scrollbar(
                controller: controllerScroll,
                trackVisibility: true,
                thumbVisibility: true,
                child: SingleChildScrollView(
                  controller: controllerScroll,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      border: TableBorder.all(color: Colors.transparent),
                      columnWidths: const {
                        0: FlexColumnWidth(),
                        1: FlexColumnWidth(),
                        2: FlexColumnWidth(),
                        3: FlexColumnWidth(),
                        4: FlexColumnWidth(),
                      },
                      children: [
                        ...List.generate(
                          horarios.length,
                          (rowIndex) {
                            // Calcula o maior índice (altura) entre os dias para o mesmo horário
                            int maxIndice = getMaxIndiceForRow(rowIndex);
                            double cellHeight =
                                constraints.maxHeight / 6 * maxIndice;

                            return TableRow(
                              children: [
                                buildColoredCell(const Color(0xffBFECFF),
                                    cellHeight, cellWidth, 'seg', rowIndex),
                                buildColoredCell(const Color(0xffFFBFCB),
                                    cellHeight, cellWidth, 'ter', rowIndex),
                                buildColoredCell(const Color(0xffD1FFBF),
                                    cellHeight, cellWidth, 'qua', rowIndex),
                                buildColoredCell(const Color(0xffFDECAE),
                                    cellHeight, cellWidth, 'qui', rowIndex),
                                buildColoredCell(const Color(0xffFFBFF9),
                                    cellHeight, cellWidth, 'sex', rowIndex),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildHeaderCell(String text) {
    return Container(
      height: 30,
      alignment: const Alignment(0, 0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  // Função para verificar se há marcadores no dia e horário específico
  Widget buildColoredCell(
      Color color, double height, double width, String day, int rowIndex) {
    String horario = getHorarioPorIndice(rowIndex);

    // Encontra todos os marcadores para o dia e horário específico
    final markersInCell = widget.markers.where((m) {
      return m['dia_da_semana'] == day && m['horario'] == horario;
    }).toList();

    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.only(top: 1),
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 5,
            spreadRadius: 0,
          ),
        ],
      ),
      child: markersInCell.isNotEmpty
          ? Center(
              child: Container(
                height: height - 10,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: markersInCell.length,
                  itemBuilder: (context, index) {
                    final marker = markersInCell[index];
                    return Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          buildPulsatingCircle(),
                          const SizedBox(height: 5),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: AutoSizeText(
                              'Profissional: ${marker['profissional']}',
                              maxLines: 2,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: AutoSizeText(
                              'Paciente ${marker['paciente']}',
                              maxLines: 2,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: AutoSizeText(
                              'Inicio as ${marker['horario']}',
                              maxLines: 1,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          : null,
    );
  }

  // Função para obter o número máximo de marcadores para uma linha específica (horário)
  int getMaxIndiceForRow(int rowIndex) {
    List<String> dias = ['seg', 'ter', 'qua', 'qui', 'sex'];
    int maxIndice = 1; // Começa com 1

    for (String dia in dias) {
      final markersInCell = widget.markers.where((m) {
        return m['dia_da_semana'] == dia &&
            m['horario'] == getHorarioPorIndice(rowIndex);
      }).toList();
      if (markersInCell.length > maxIndice) {
        maxIndice = markersInCell.length;
      }
    }
    return maxIndice;
  }

  // Função para converter o índice da linha em horário correspondente
  String getHorarioPorIndice(int index) {
    return horarios[index];
  }

  // Função para criar o círculo pulsante
  Widget buildPulsatingCircle() {
    return SizedBox(
      height: 10,
      child: AnimatedBuilder(
        animation: _pulseAnimation,
        builder: (context, child) {
          return Container(
            margin: const EdgeInsets.only(left: 10),
            height: _pulseAnimation.value,
            width: _pulseAnimation.value,
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
          );
        },
      ),
    );
  }
}
