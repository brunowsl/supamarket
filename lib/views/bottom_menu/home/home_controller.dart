import 'package:supamarket/app/purchase/domain/purchase.dart';
import 'package:supamarket/app/purchase/purchase_injector.dart';

class HomeController {
  final _purchaseService = PurchaseInjector.inject();

  Future<List<Purchase>> getAllPurchasesByMonth() async {
    return await _purchaseService.getAllPurchasesByMonth();
  }
}
