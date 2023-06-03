import 'package:flutter/material.dart';

class BarraDeNavegacao extends StatelessWidget {
  const BarraDeNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: const EdgeInsets.all(20),
      child: IconTheme(
        data: IconThemeData(
            color: Theme.of(context).colorScheme.onPrimaryContainer),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.view_stream),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.grid_view),
            ),
          ],
        ),
      ),
    );
  }
}
