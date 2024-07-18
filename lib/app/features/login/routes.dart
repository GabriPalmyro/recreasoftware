import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:recreshow_system/app/commons/router/page_route.dart';
import 'package:recreshow_system/app/commons/router/routes.dart';
import 'package:recreshow_system/app/features/login/domain/login_interactor.dart';
import 'package:recreshow_system/app/features/login/presentation/cubit/login_cubit.dart';
import 'package:recreshow_system/app/features/login/presentation/page/login_page.dart';

final loginRoutes = [
  PageRoute(
    route: Routes.login,
    builder: (context, state) => MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(
            GetIt.I.get<LoginInteractor>(),
          ),
        ),
      ],
      child: const LoginPage(),
    ),
  ),
];
