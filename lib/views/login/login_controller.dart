import 'package:supamarket/app/user/user_injector.dart';

class LoginController {
  final userService = UserInjector.inject();

  Future<bool> login(String email, String password) async {
    final user = await userService.getUser(email, password);
    return user != null;
  }
}
