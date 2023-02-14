import '../domain/market.dart';
import '../usecases/market_uc.dart';

class MarketService {
  final MarketUC marketUC;

  MarketService(this.marketUC);

  Future<List<Market>> getAllMarketsByFamilyId(String familyId) async {
    return await marketUC.getAllMarketsByFamilyId(familyId);
  }
}
