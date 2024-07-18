abstract class LoginInteractor {
  Future<void> login(String account, String password, String unit);
}

class LoginInteractorImpl implements LoginInteractor {
  @override
  Future<void> login(String account, String password, String unit) async {
    await Future.delayed(const Duration(seconds: 2));
    if (account.isEmpty || password.isEmpty || unit.isEmpty) {
      throw Exception('Preencha todos os campos');
    }
  }
}
