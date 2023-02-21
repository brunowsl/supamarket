import '../domain/purchase.dart';

abstract class PurchaseUC {
  Future<List<Purchase>> getAllPurchasesByMonth();
  Future<Purchase> savePurchase(Purchase purchase);
}
