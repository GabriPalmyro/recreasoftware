import 'package:get_it/get_it.dart';
import 'package:recreshow_system/app/commons/router/app_navigator.dart';
import 'package:recreshow_system/app/commons/router/page_route.dart';
import 'package:recreshow_system/app/commons/router/routes.dart';
import 'package:recreshow_system/app/features/login/routes.dart';
import 'package:recreshow_system/app/features/splash/presentation/page/splash_page.dart';

final routes = [
  PageRoute(
    route: Routes.splash,
    builder: (context, state) => SplashPage(
      navigator: GetIt.I.get<AppNavigator>(),
    ),
  ),
  ...loginRoutes,
];
