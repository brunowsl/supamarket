import '../domain/market.dart';

abstract class MarketUC {
  Future<List<Market>> getAllMarketsByFamilyId(String familyId);
}
