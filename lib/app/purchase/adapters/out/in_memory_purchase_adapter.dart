import 'package:supamarket/app/purchase/usecases/puchases_uc.dart';

import '../../domain/purchase.dart';

class InMemoryPurchaseAdapter implements PurchaseUC {
  final List<Purchase> _purchases = [
    Purchase(
      id: 1,
      responsavel: 'João',
      data: DateTime.now(),
      finalizado: true,
      valor: 100,
    ),
    Purchase(
      id: 2,
      responsavel: 'Maria',
      data: DateTime.now(),
      finalizado: true,
      valor: 200,
    ),
    Purchase(
      id: 3,
      responsavel: 'José',
      data: DateTime.now(),
      finalizado: true,
      valor: 300,
    ),
    Purchase(
      id: 4,
      responsavel: 'Joana',
      data: DateTime.now(),
      finalizado: false,
      valor: 400,
    ),
  ];

  @override
  Future<List<Purchase>> getAllPurchasesByMonth() {
    return Future.value(_purchases);
  }
}
