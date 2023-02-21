import 'package:supamarket/app/market/domain/market.dart';

import '../../../app/market/market_injector.dart';

class SupermarketController {
  final supermarketService = MarketInjector.inject();

  Future<List<Market>> getAllMarketsByFamilyId(String familyId) async {
    return await supermarketService.getAllMarketsByFamilyId(familyId);
  }
}
