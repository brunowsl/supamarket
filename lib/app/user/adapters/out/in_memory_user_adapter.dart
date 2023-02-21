import 'package:supamarket/app/user/repositories/user_repository.dart';

import '../../domain/user_domain.dart';

class InMemoryUserAdapter implements UserRepository {
  final users = [
    UserDomain(
      id: '1',
      name: 'Bruno Lobão',
      email: 'brunowsl123@gmail.com',
      password: '123',
      familyId: '1',
    ),
    UserDomain(
      id: '2',
      name: 'Lorraine Frederico',
      email: 'lorraine.frederico@gmail.com',
      password: '123',
      familyId: '1',
    ),
  ];

  @override
  Future<UserDomain> getUser(String email, String password) {
    return Future.value(
      users.firstWhere(
        (user) => user.email == email && user.password == password,
      ),
    );
  }

  @override
  Future<List<UserDomain>> getUsersByFamily(String familyId) {
    return Future.value(
      users.where((user) => user.familyId == familyId).toList(),
    );
  }
}
