
import '../domain/purchase.dart';

abstract class PurchaseUC {
  Future<List<Purchase>> getAllPurchasesByMonth();
}
