// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:supamarket/app/user/domain/user_domain.dart';
import 'package:supamarket/app/user/repositories/user_repository.dart';
import 'package:supamarket/app/user/usercases/user_uc.dart';

class UserService implements UserUC {
  final UserRepository repo;
  UserService({required this.repo});

  @override
  Future<UserDomain> getUser(String email, String password) {
    return repo.getUser(email, password);
  }

  @override
  Future<List<UserDomain>> getUsersByFamily(String familyId) {
    return repo.getUsersByFamily(familyId);
  }
}
