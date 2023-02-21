import 'package:supamarket/app/market/domain/market.dart';

import '../../repositories/market_repository.dart';

class InMemoryMarketAdapter implements MarketRepository {
  List<Market> markets = [
    Market(
      name: 'Mateus',
      description:
          'Grande supermercado da cidade. Tem bastante coisa lá, mas ultimamente tem subido os preços dos produtos.',
      type: 'SUPERMERCADO',
      address: 'Rua 1, 123',
      date: '2021-09-01',
    ),
    Market(
      name: 'Cantinho da Jurema',
      description: 'Quintadinha super barata perto de casa.',
      type: 'QUITANDA',
      address: 'Rua 2, 456',
      date: '2021-09-01',
    ),
    Market(
      name: 'Del Rei',
      description: 'Conveniência cara pra droga. Mas tem bastante opção.',
      type: 'CONVENIENCIA',
      address: 'Rua 3, 789',
      date: '2023-11-01',
    ),
    Market(
      name: 'Pague Menos',
      description: 'Atendimento muito bom do pessoal da farmácia.',
      type: 'FARMACIA',
      address: 'Rua 4, 1011',
      date: '2020-07-22',
    ),
  ];

  @override
  Future<List<Market>> getAllMarketsByFamilyId(String familyId) {
    return Future.value(markets);
  }
}
