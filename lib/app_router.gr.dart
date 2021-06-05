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
    BookDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<BookDetailsRouteArgs>(
              orElse: () =>
                  BookDetailsRouteArgs(bookId: pathParams.getInt('bookId')));
          return _i3.BookDetailsPage(key: args.key, bookId: args.bookId);
        }),
    BooksRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.BooksPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(BookDetailsRoute.name, path: '/book/:bookId'),
        _i1.RouteConfig(BooksRoute.name, path: '/books'),
        _i1.RouteConfig('/books/*#redirect',
            path: '/books/*', redirectTo: '/books', fullMatch: true),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class BookDetailsRoute extends _i1.PageRouteInfo<BookDetailsRouteArgs> {
  BookDetailsRoute({_i2.Key? key, required int bookId})
      : super(name,
            path: '/book/:bookId',
            args: BookDetailsRouteArgs(key: key, bookId: bookId),
            rawPathParams: {'bookId': bookId});

  static const String name = 'BookDetailsRoute';
}

class BookDetailsRouteArgs {
  const BookDetailsRouteArgs({this.key, required this.bookId});

  final _i2.Key? key;

  final int bookId;
}

class BooksRoute extends _i1.PageRouteInfo {
  const BooksRoute() : super(name, path: '/books');

  static const String name = 'BooksRoute';
}
