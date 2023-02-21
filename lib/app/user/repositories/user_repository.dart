import 'package:supamarket/app/user/domain/user_domain.dart';

abstract class UserRepository {
  Future<UserDomain> getUser(String email, String password);
  Future<List<UserDomain>> getUsersByFamily(String familyId);
}
