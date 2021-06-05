import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/app_router.gr.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountPage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AutoRouter.of(context).push(const AccountDetailsRoute());
          },
          child: const Text('Details'),
        ),
      ),
    );
  }
}
