import 'package:supamarket/app/purchase/repositories/purchase_repository.dart';
import 'package:supamarket/app/purchase/usecases/puchases_uc.dart';

import '../domain/purchase.dart';

class PurchaseService implements PurchaseUC {
  final PurchaseRepository repo;

  PurchaseService(this.repo);

  @override
  Future<List<Purchase>> getAllPurchasesByMonth() async {
    return await repo.getAllPurchasesByMonth();
  }

  @override
  Future<Purchase> savePurchase(Purchase purchase) {
    throw UnimplementedError();
  }
}
