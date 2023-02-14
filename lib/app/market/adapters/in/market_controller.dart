import 'package:supamarket/app/market/adapters/out/in_memory_market_adapter.dart';

import '../../domain/market.dart';

class MarketController {
  final InMemoryMarketAdapter inMemoryMarketAdapter;

  MarketController(this.inMemoryMarketAdapter);

  Future<List<Market>> getAllMarketsByFamilyId(String familyId) async {
    return await inMemoryMarketAdapter.getAllMarketsByFamilyId(familyId);
  }
}
