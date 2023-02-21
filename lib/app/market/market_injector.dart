import 'package:supamarket/app/market/adapters/out/in_memory_market_adapter.dart';
import 'package:supamarket/app/market/service/market_service.dart';

class MarketInjector {
  static MarketService inject() {
    return MarketService(InMemoryMarketAdapter());
  }
}
