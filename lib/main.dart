import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app_router.gr.dart';
import 'bloc/auth_bloc.dart';
import 'constants/app_theme.dart';

void main() {
  setPathUrlStrategy();
  runApp(App());
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: RoutedApp(appRouter: _appRouter),
    );
  }
}

class RoutedApp extends StatelessWidget {
  const RoutedApp({
    Key? key,
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(key: key);

  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return MaterialApp.router(
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: AutoRouterDelegate.declarative(
            _appRouter,
            routes: (context) {
              print('In Declarative');
              return state.when(
                unauthenticated: () {
                  return [
                    LoginWrapperRoute(
                      onLogin: (email, password) {
                        context.read<AuthBloc>().add(AuthEvent.loginSubmitted(
                            email: email, password: password));
                      },
                    )
                  ];
                },
                authenticated: () {
                  return const [
                    HomeRoute(),
                  ];
                },
              );
            },
          ),
          title: 'Auto Route Example App',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
        );
      },
    );
  }
}
