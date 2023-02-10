import 'package:supamarket/app/purchase/usecases/puchases_uc.dart';

import '../domain/purchase.dart';

class PurchaseService {
  final PurchaseUC purchaseUC;

  PurchaseService(this.purchaseUC);

  Future<List<Purchase>> getAllPurchasesByMonth() async {
    return await purchaseUC.getAllPurchasesByMonth();
  }
}
