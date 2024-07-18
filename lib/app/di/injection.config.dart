// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:recreshow_system/app/commons/local_database/local_database.dart'
    as _i4;
import 'package:recreshow_system/app/commons/network/network_provider.dart'
    as _i7;
import 'package:recreshow_system/app/commons/router/app_navigator.dart' as _i5;
import 'package:recreshow_system/app/commons/router/router_config.dart' as _i6;
import 'package:recreshow_system/app/features/login/di/login_module.dart'
    as _i8;
import 'package:recreshow_system/app/features/login/domain/login_interactor.dart'
    as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initAppGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final loginModule = _$LoginModule();
    gh.factory<_i3.LoginInteractor>(() => loginModule.providesInteractor());
    gh.lazySingleton<_i4.LocalDatabase>(() => _i4.SharedPreferencesDatabase());
    gh.lazySingleton<_i5.AppNavigator>(
        () => _i5.AppNavigatorImpl(gh<_i6.AppRouterConfig>()));
    gh.factory<_i7.NetworkProvider>(() => _i7.NetworkProviderImlp());
    return this;
  }
}

class _$LoginModule extends _i8.LoginModule {}
