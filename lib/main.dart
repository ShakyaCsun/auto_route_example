import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app_router.gr.dart';
import 'constants/app_theme.dart';

void main() {
  setPathUrlStrategy();
  runApp(App());
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: 'Auto Route Example App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
