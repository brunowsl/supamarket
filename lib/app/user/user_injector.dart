import 'package:supamarket/app/user/adapters/out/in_memory_user_adapter.dart';
import 'package:supamarket/app/user/service/user_service.dart';

class UserInjector {
  static UserService inject() {
    return UserService(repo: InMemoryUserAdapter());
  }
}
