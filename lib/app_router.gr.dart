// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'pages/pages.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    BooksRouter.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.BooksWrapperPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.zoomIn,
        opaque: true,
        barrierDismissible: false),
    AccountsRouter.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.zoomIn,
        opaque: true,
        barrierDismissible: false),
    BooksRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.BooksPage();
        },
        opaque: true,
        barrierDismissible: false),
    BookDetailsRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<BookDetailsRouteArgs>(
              orElse: () =>
                  BookDetailsRouteArgs(bookId: pathParams.getInt('bookId')));
          return _i3.BookDetailsPage(key: args.key, bookId: args.bookId);
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false),
    AccountRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AccountPage();
        },
        opaque: true,
        barrierDismissible: false),
    AccountDetailsRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.AccountDetailsPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.slideLeftWithFade,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(BooksRouter.name, path: '/books', children: [
          _i1.RouteConfig(BooksRoute.name, path: ''),
          _i1.RouteConfig(BookDetailsRoute.name, path: ':bookId'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig(AccountsRouter.name, path: '/account', children: [
          _i1.RouteConfig(AccountRoute.name, path: ''),
          _i1.RouteConfig(AccountDetailsRoute.name, path: 'details'),
          _i1.RouteConfig('*#redirect',
              path: '*', redirectTo: '', fullMatch: true)
        ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class BooksRouter extends _i1.PageRouteInfo {
  const BooksRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/books', initialChildren: children);

  static const String name = 'BooksRouter';
}

class AccountsRouter extends _i1.PageRouteInfo {
  const AccountsRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/account', initialChildren: children);

  static const String name = 'AccountsRouter';
}

class BooksRoute extends _i1.PageRouteInfo {
  const BooksRoute() : super(name, path: '');

  static const String name = 'BooksRoute';
}

class BookDetailsRoute extends _i1.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({_i2.Key? key, required int bookId})
      : super(name,
            path: ':bookId',
            args: BookDetailsRouteArgs(key: key, bookId: bookId),
            rawPathParams: {'bookId': bookId});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({this.key, required this.bookId});

  final _i2.Key? key;

  final int bookId;
}

class AccountRoute extends _i1.PageRouteInfo {
  const AccountRoute() : super(name, path: '');

  static const String name = 'AccountRoute';
}

class AccountDetailsRoute extends _i1.PageRouteInfo {
  const AccountDetailsRoute() : super(name, path: 'details');

  static const String name = 'AccountDetailsRoute';
}
