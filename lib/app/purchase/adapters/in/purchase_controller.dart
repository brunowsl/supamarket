import 'package:supamarket/app/purchase/adapters/out/in_memory_purchase_adapter.dart';

import '../../domain/purchase.dart';

class PurchaseController {
  final InMemoryPurchaseAdapter inMemoryPurchaseAdapter;

  PurchaseController(this.inMemoryPurchaseAdapter);

  Future<List<Purchase>> getAllPurchasesByMonth() async {
    return await inMemoryPurchaseAdapter.getAllPurchasesByMonth();
  }

  Future<Purchase> savePurchase(Purchase purchase) async {
    return await inMemoryPurchaseAdapter.savePurchase(purchase);
  }
}
