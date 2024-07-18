import 'package:injectable/injectable.dart';
import 'package:recreshow_system/app/features/login/domain/login_interactor.dart';

@module
abstract class LoginModule {
  LoginInteractor providesInteractor() => LoginInteractorImpl();
}
