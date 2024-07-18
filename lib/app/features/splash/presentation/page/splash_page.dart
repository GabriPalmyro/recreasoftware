import 'package:flutter/material.dart';
import 'package:recreshow_system/app/commons/design_system/core/theme/ds_theme.dart';
import 'package:recreshow_system/app/commons/router/app_navigator.dart';
import 'package:recreshow_system/app/commons/router/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({required this.navigator, super.key});
  final AppNavigator navigator;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _goToLogin();
  }

  Future<void> _goToLogin() async {
    await Future.delayed(const Duration(seconds: 2)).then((_) {
      widget.navigator.push(Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    final tokens = DSTheme.getDesignTokensOf(context);
    return Scaffold(
      backgroundColor: tokens.colors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Carregando informações...',
              style: TextStyle(fontSize: tokens.font.size.lg, fontWeight: tokens.font.weight.bold),
            ),
            SizedBox(height: tokens.spacing.inline.xs),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(tokens.colors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
