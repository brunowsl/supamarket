import 'package:supamarket/app/market/repositories/market_repository.dart';

import '../domain/market.dart';
import '../usecases/market_uc.dart';

class MarketService implements MarketUC {
  final MarketRepository repo;

  MarketService(this.repo);

  @override
  Future<List<Market>> getAllMarketsByFamilyId(String familyId) async {
    return await repo.getAllMarketsByFamilyId(familyId);
  }
}
