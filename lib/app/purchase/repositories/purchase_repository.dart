import '../domain/purchase.dart';

abstract class PurchaseRepository {
  Future<List<Purchase>> getAllPurchasesByMonth();
  Future<Purchase> savePurchase(Purchase purchase);
}
