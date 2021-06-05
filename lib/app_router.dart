import 'package:auto_route/auto_route.dart';

import 'pages/pages.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: BookDetailsPage, path: '/book/:bookId'),
    AutoRoute(page: BooksPage, path: '/books'),
    RedirectRoute(path: '/books/*', redirectTo: '/books'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
  preferRelativeImports: true,
)
class $AppRouter {}
