// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:supamarket/app/purchase/domain/purchase.dart';
import 'package:supamarket/components/card.dart';
import 'package:intl/intl.dart';

import '../app/purchase/adapters/in/purchase_controller.dart';
import '../app/purchase/adapters/out/in_memory_purchase_adapter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PurchaseController purchaseController =
      PurchaseController(InMemoryPurchaseAdapter());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SUPAMARKET made with ❤️'),
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(
          color: Color(0xFF369e6f),
        ),
      ),
      body: Container(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomCardOverview(qnt: 5),
              Expanded(
                  flex: 10,
                  child: FutureBuilder<List<Purchase>>(
                    future: purchaseController.getAllPurchasesByMonth(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return CustomCardPurchase(
                              purchase: snapshot.data![index],
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return const Text('Error');
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.pushNamed(context, '/compra');
        },
        backgroundColor: Color(0xFF369e6f),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomCardPurchase extends StatelessWidget {
  final Purchase purchase;
  const CustomCardPurchase({super.key, required this.purchase});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 40,
              child: Icon(
                Icons.shopping_cart,
                color: Color(0xFF369e6f),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      purchase.responsavel,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF369e6f),
                      ),
                    ),
                    Text(
                      DateFormat('dd/MM/yyyy').format(purchase.data),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 83, 83, 83),
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                purchase.finalizado
                    ? Icon(
                        Icons.check,
                        color: Color(0xFF369e6f),
                      )
                    : Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                Text(
                  'R\$ ${purchase.valor.toString()}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF369e6f),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
