import 'package:supamarket/app/user/domain/user_domain.dart';

import '../../domain/purchase.dart';
import '../../repositories/purchase_repository.dart';

class InMemoryPurchaseAdapter implements PurchaseRepository {
  final List<Purchase> _purchases = [
    Purchase(
      id: 1,
      responsavel: UserDomain(
          id: '1',
          name: 'João',
          email: 'joao@tce.ma.gov.br',
          password: '123456',
          familyId: '1'),
      data: DateTime.now(),
      finalizado: true,
      valor: 100,
      criadoPor: UserDomain(
          id: '1',
          name: 'João',
          email: 'joao@tce.ma.gov.br',
          password: '123456',
          familyId: '1'),
    ),
    Purchase(
      id: 2,
      responsavel: UserDomain(
          id: '2',
          name: 'Maria',
          email: 'askdasd@gmail.com',
          password: '123456',
          familyId: '1'),
      data: DateTime.now(),
      finalizado: true,
      valor: 100,
      criadoPor: UserDomain(
          id: '1',
          name: 'João',
          email: 'aksdjlakhsdjaksd@gmail.com',
          password: '123456',
          familyId: '1'),
    ),
    Purchase(
      id: 3,
      responsavel: UserDomain(
          id: '3',
          name: 'José',
          email: '22222@gmail.com',
          password: '123456',
          familyId: '1'),
      data: DateTime.now(),
      finalizado: true,
      valor: 100,
      criadoPor: UserDomain(
          id: '1',
          name: 'João',
          email: 'lllllll@gmail.com',
          password: '123456',
          familyId: '1'),
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
