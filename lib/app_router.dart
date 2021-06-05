import 'package:auto_route/auto_route.dart';

import 'pages/pages.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: HomePage),
    CustomRoute(
      path: '/books',
      name: 'BooksRouter',
      page: BooksWrapperPage,
      transitionsBuilder: TransitionsBuilders.zoomIn,
      children: [
        CustomRoute(
          path: '',
          page: BooksPage,
        ),
        CustomRoute(
          path: ':bookId',
          page: BookDetailsPage,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    CustomRoute(
      path: '/account',
      name: 'AccountsRouter',
      page: EmptyRouterPage,
      transitionsBuilder: TransitionsBuilders.zoomIn,
      children: [
        CustomRoute(
          path: '',
          page: AccountPage,
        ),
        CustomRoute(
          path: 'details',
          page: AccountDetailsPage,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        ),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
  preferRelativeImports: true,
)
class $AppRouter {}
