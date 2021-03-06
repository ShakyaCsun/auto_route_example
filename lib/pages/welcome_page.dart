import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app_router.gr.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WelcomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(
                  const HomeRoute(),
                );
              },
              child: const Text('Go to Home page'),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(
                  LoginWrapperRoute(
                    onLogin: (email, password) {},
                  ),
                );
              },
              child: const Text('SIGN IN'),
            ),
          ],
        ),
      ),
    );
  }
}
