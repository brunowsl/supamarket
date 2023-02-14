// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:supamarket/app/market/adapters/in/market_controller.dart';
import 'package:supamarket/app/market/adapters/out/in_memory_market_adapter.dart';

class SupermercadosView extends StatefulWidget {
  const SupermercadosView({super.key});

  @override
  State<SupermercadosView> createState() => _SupermercadosViewState();
}

class _SupermercadosViewState extends State<SupermercadosView> {
  final MarketController marketController =
      MarketController(InMemoryMarketAdapter());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'Supermercados',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 126, 126, 126),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FutureBuilder(
              future: marketController
                  .getAllMarketsByFamilyId("StringTesteTantoFazAgora"),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        icon: getIcon(snapshot.data![index].type),
                        titleLarge: snapshot.data![index].name,
                        titleSmall: snapshot.data![index].description,
                        type: snapshot.data![index].type,
                        address: snapshot.data![index].address,
                        date: snapshot.data![index].date,
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
            ),
          ],
        ),
      ),
    );
  }

  getIcon(String type) {
    switch (type) {
      case "SUPERMERCADO":
        return Icons.shopping_cart;
      case "FARMACIA":
        return Icons.bloodtype;
      case "PADARIA":
        return Icons.local_cafe;
      case "QUITANDA":
        return Icons.add_business;
      case "CONVENIENCIA":
        return Icons.local_convenience_store;
      default:
        return Icons.shopping_cart;
    }
  }
}

class CustomCard extends StatelessWidget {
  final IconData icon;

  final String titleLarge;

  final String titleSmall;

  final String type;

  final String address;

  final String date;

  const CustomCard({
    super.key,
    required this.icon,
    required this.titleLarge,
    required this.titleSmall,
    required this.type,
    required this.address,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black87,
      elevation: 5,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Center(
            child: ListTile(
              leading: Icon(
                icon,
                color: const Color(0xFF369e6f),
                size: 40,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    titleLarge,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    date,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 126, 126, 126),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    titleSmall,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 126, 126, 126)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
