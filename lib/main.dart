import 'package:flutter/material.dart';

import 'pages/home_tarefas.dart';

void main() => runApp(const AppTarefas());

class AppTarefas extends StatelessWidget {
  const AppTarefas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
        useMaterial3: true,
      ),
      home: const HomeTarefas(),
    );
  }
}
