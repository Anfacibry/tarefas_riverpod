import 'package:flutter/material.dart';

import 'package:tarefa_riverpod/models/navigation_bar.dart';

class HomeTarefas extends StatefulWidget {
  const HomeTarefas({super.key});

  @override
  State<HomeTarefas> createState() => _HomeTarefasState();
}

class _HomeTarefasState extends State<HomeTarefas> {
  List<Map<String, String>> tarefas = [
    {
      "titulo": "Ovos",
      "conteudo": "Pega dois ovos por favor",
    },
    {
      "titulo": "Bolas",
      "conteudo": "Pega duas bolas por favor",
    },
    {
      "titulo": "Estudos",
      "conteudo": "Não esqueça da atividade para o dia 23 de junho",
    },
    {
      "titulo": "Frase de Voltaire",
      "conteudo":
          "Teria maior confiança no desempenho de um homem que espera ter uma grande recompensa do que no daquele que já a recebeu.\nTeria maior confiança no desempenho de um homem que espera ter uma grande recompensa do que no daquele que já a recebeu.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    final ({double altura, double largura}) tamanho = (
      altura: MediaQuery.of(context).size.height,
      largura: MediaQuery.of(context).size.width,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefas"),
      ),
      body: SizedBox(
        height: tamanho.altura,
        width: tamanho.largura,
        child: GridView.builder(
          itemCount: tarefas.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (contextGrid, index) => Card(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 2, right: 2, bottom: 0),
              child: ListTile(
                title: Text(tarefas[index]["titulo"]!),
                subtitle: SingleChildScrollView(
                  child: Text(tarefas[index]["conteudo"]!),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BarraDeNavegacao(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}
