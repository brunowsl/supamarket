// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CompraView extends StatefulWidget {
  const CompraView({super.key});

  @override
  State<CompraView> createState() => _CompraViewState();
}

class _CompraViewState extends State<CompraView> {
  @override
  Widget build(BuildContext context) {
    String? selectedSupermarket;
    List<String> supermarkets = [
      'Supermercado A',
      'Supermercado B',
      'Supermercado C'
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF369e6f),
        ),
        title: const Text(
          'Nova Compra',
          style: TextStyle(
            color: Color(0xFF369e6f),
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              DropdownButton<String>(
                underline: Container(
                  height: 2,
                  color: Color(0xFF369e6f),
                ),
                iconSize: 35,
                value: selectedSupermarket,
                onChanged: (newValue) {
                  setState(() {
                    selectedSupermarket = newValue;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xFF369e6f),
                ),
                dropdownColor: Colors.black87,
                hint: Text(
                  'Selecione o Supermercado',
                  style: TextStyle(color: Colors.white),
                ),
                items: supermarkets.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.white)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const CustomCompraInput(
                  tooltipMessage: 'Nome do Produto', icon: Icons.shopping_cart),
              const SizedBox(height: 10),
              const CustomCompraInput(
                  tooltipMessage: 'Preço', icon: Icons.attach_money),
              const SizedBox(height: 10),
              const CustomCompraInput(
                  tooltipMessage: 'Data', icon: Icons.calendar_today),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF369e6f),
                    ),
                  ),
                  child: const Text('Adicionar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCompraInput extends StatelessWidget {
  const CustomCompraInput({
    Key? key,
    required this.tooltipMessage,
    required this.icon,
  }) : super(key: key);

  final String tooltipMessage;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: tooltipMessage,
        hintStyle: const TextStyle(color: Colors.white),
        prefixIcon: Icon(
          icon,
          color: const Color(0xFF369e6f),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFF369e6f),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFF369e6f),
          ),
        ),
      ),
    );
  }
}
