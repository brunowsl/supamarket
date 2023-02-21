import 'package:supamarket/app/purchase/adapters/out/in_memory_purchase_adapter.dart';
import 'package:supamarket/app/purchase/service/purchase_service.dart';

class PurchaseInjector {
  static PurchaseService inject() {
    return PurchaseService(InMemoryPurchaseAdapter());
  }
}
