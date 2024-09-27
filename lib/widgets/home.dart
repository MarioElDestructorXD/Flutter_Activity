import 'package:flutter/material.dart';
import 'package:learning_b/widgets/content_column.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            ContentColumn(title: 'Primera Columna', text: 'Primer Parrafo',),
            ContentColumn(title: 'Segunda Columna', text: 'Segunda Parrafo',),
            ContentColumn(title: 'Tercera Columna', text: 'Tercera Parrafo',),
          ],
        ),
      ),
      // ignore: avoid_print
      floatingActionButton: FloatingActionButton(onPressed: () => print("Clic"),
      backgroundColor: Colors.amber,
      foregroundColor: Colors.black,
      child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

