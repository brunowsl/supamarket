import '../domain/market.dart';

abstract class MarketRepository {
  Future<List<Market>> getAllMarketsByFamilyId(String familyId);
}
