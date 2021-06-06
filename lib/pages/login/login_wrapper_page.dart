import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../app_router.gr.dart';

class LoginWrapperPage extends StatefulWidget {
  final Function(String email, String password) onLogin;
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
                await widget.onLogin(
                  email,
                  passwordResult,
                );
              },
            )
        ];
      },
    );
  }
}
