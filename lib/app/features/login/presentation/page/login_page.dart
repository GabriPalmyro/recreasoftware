import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:recreshow_system/app/commons/design_system/core/theme/ds_theme.dart';
import 'package:recreshow_system/app/commons/router/app_navigator.dart';
import 'package:recreshow_system/app/commons/router/routes.dart';
import 'package:recreshow_system/app/features/login/presentation/cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _selectedUnit = 'Unit 1';

  bool _showPassord = false;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tokens = DSTheme.getDesignTokensOf(context);
    return Scaffold(
      backgroundColor: tokens.colors.white,
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: tokens.colors.background,
              child: Center(
                child: Image.asset(
                  'assets/images/recreasoft_logo.png',
                ),
              ),
            ),
          ),
          BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginResult) {
                GetIt.I.get<AppNavigator>().push(Routes.home);
              } else if (state is LoginError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.message),
                  ),
                );
              }
            },
            builder: (_, state) => Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: tokens.spacing.inline.xxxl),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: tokens.font.size.lg,
                          fontWeight: tokens.font.weight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: tokens.spacing.inline.xs),
                    TextField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        hintText: 'Numero do funcionário',
                      ),
                    ),
                    SizedBox(height: tokens.spacing.inline.xs),
                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        hintText: 'Senha',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _showPassord ? Icons.visibility : Icons.visibility_off,
                            color: tokens.colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _showPassord = !_showPassord;
                            });
                          },
                        ),
                      ),
                      obscureText: !_showPassord,
                    ),
                    SizedBox(height: tokens.spacing.inline.xs),
                    SizedBox(
                      width: double.infinity,
                      child: DropdownButton<String>(
                        value: _selectedUnit,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedUnit = newValue!;
                          });
                        },
                        items: <String>['Unit 1', 'Unit 2', 'Unit 3', 'Unit 4'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontWeight: tokens.font.weight.regular,
                              ),
                            ),
                          );
                        }).toList(),
                        style: TextStyle(
                          fontWeight: tokens.font.weight.regular,
                          color: tokens.colors.grey,
                        ),
                        dropdownColor: tokens.colors.white,
                      ),
                    ),
                    SizedBox(height: tokens.spacing.inline.sm),
                    InkWell(
                      onTap: () {
                        context.read<LoginCubit>().login(
                              _usernameController.text,
                              _passwordController.text,
                              _selectedUnit,
                            );
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          color: tokens.colors.primary,
                          borderRadius: BorderRadius.circular(tokens.borders.radius.small),
                        ),
                        padding: EdgeInsets.symmetric(vertical: tokens.spacing.inline.xxs),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Entrar',
                              style: TextStyle(
                                fontSize: tokens.font.size.sm,
                                fontWeight: tokens.font.weight.bold,
                                color: tokens.colors.white,
                              ),
                            ),
                            if (state is LoginLoading) ...[
                              SizedBox(width: tokens.spacing.inline.xs),
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.0,
                                  valueColor: AlwaysStoppedAnimation<Color>(tokens.colors.secondary),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
