import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(
                  const BooksRouter(
                    children: [
                      BooksRoute(),
                    ],
                  ),
                );
              },
              child: const Text('Go to BOOKS page'),
            ),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(
                  LoginWrapperRoute(
                    onLogin: (isLoggedIn) {
                      if (isLoggedIn) {
                        AutoRouter.of(context).push(
                          const AccountsRouter(
                            children: [
                              AccountRoute(),
                            ],
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('LOGIN unsuccessful'),
                          ),
                        );
                      }
                    },
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
