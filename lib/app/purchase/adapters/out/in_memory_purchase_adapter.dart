import 'package:supamarket/app/purchase/usecases/puchases_uc.dart';
import 'package:supamarket/app/user/domain/user_domain.dart';

import '../../domain/purchase.dart';

class InMemoryPurchaseAdapter implements PurchaseUC {
  final List<Purchase> _purchases = [
    Purchase(
      id: 1,
      responsavel: UserDomain(
        id: '1',
        name: 'João',
        email: 'joao@tce.ma.gov.br',
      ),
      data: DateTime.now(),
      finalizado: true,
      valor: 100,
      criadoPor: UserDomain(
        id: '1',
        name: 'João',
        email: 'joao@tce.ma.gov.br',
      ),
    ),
    Purchase(
      id: 2,
      responsavel: UserDomain(
        id: '2',
        name: 'Maria',
        email: 'askdasd@gmail.com',
      ),
      data: DateTime.now(),
      finalizado: true,
      valor: 100,
      criadoPor: UserDomain(
        id: '1',
        name: 'João',
        email: 'aksdjlakhsdjaksd@gmail.com',
      ),
    ),
    Purchase(
      id: 3,
      responsavel: UserDomain(
        id: '3',
        name: 'José',
        email: '22222@gmail.com',
      ),
      data: DateTime.now(),
      finalizado: true,
      valor: 100,
      criadoPor: UserDomain(
        id: '1',
        name: 'João',
        email: 'lllllll@gmail.com',
      ),
    ),
  ];

  @override
  Future<List<Purchase>> getAllPurchasesByMonth() {
    return Future.value(_purchases);
  }

  @override
  Future<Purchase> savePurchase(Purchase purchase) {
    _purchases.add(purchase);
    return Future.value(purchase);
  }
}
