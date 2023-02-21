import 'package:flutter/material.dart';

class CompraView extends StatefulWidget {
  const CompraView({super.key});

  @override
  State<CompraView> createState() => _CompraViewState();
}

class _CompraViewState extends State<CompraView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
          Card(
            child: Text('Compra'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dialogBuilder(context);
        },
        backgroundColor: const Color(0xFF369e6f),
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Nova compra'),
          content: SizedBox(
            height: 300,
            child: Column(
              children: const [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Preço',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Supermercado',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Data',
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}
