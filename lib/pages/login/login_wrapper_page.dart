import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../app_router.gr.dart';

class LoginWrapperPage extends StatefulWidget {
  final Function(bool isLoggedIn) onLogin;
  const LoginWrapperPage({Key? key, required this.onLogin}) : super(key: key);

  @override
  _LoginWrapperPageState createState() => _LoginWrapperPageState();
}

class _LoginWrapperPageState extends State<LoginWrapperPage> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      // use AutoRouter.declarative
      routes: (context) {
        return [
          EmailRoute(
            onNext: (emailResult) {
              setState(() {
                email = emailResult;
              });
            },
          ),
          if (email.contains('@'))
            PasswordRoute(
              onNext: (passwordResult) async {
                widget.onLogin(
                  await validateEmailPassword(email, passwordResult),
                );
              },
            )
        ];
      },
    );
  }
}

Future<bool> validateEmailPassword(String email, String password) async {
  return Future.delayed(const Duration(milliseconds: 500), () {
    return email.contains('@') && password.length > 6;
  });
}
