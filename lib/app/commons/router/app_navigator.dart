import 'package:injectable/injectable.dart';
import 'package:recreshow_system/app/commons/router/router_config.dart';
import 'package:recreshow_system/app/commons/router/routes.dart';

class AppNavigator {
  Future<void> pop() async {}
  Future<void> push(Routes route) async {}
}

@LazySingleton(as: AppNavigator)
class AppNavigatorImpl implements AppNavigator {
  AppNavigatorImpl(this.navigator);
  final AppRouterConfig navigator;

  @override
  Future<void> push(Routes route) async => navigator.pushNamed(route.name);

  @override
  Future<void> pop() async => navigator.pop();
}
