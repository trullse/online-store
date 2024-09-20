import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:online_store/domain/entities/good.dart';
import 'package:online_store/presentation/app/navigation/routes.dart';
import 'package:online_store/presentation/features/main/view/details_page.dart';
import 'package:online_store/presentation/features/main/view/main_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Routes.mainPath.name,
        builder: (BuildContext context, GoRouterState state) {
          return const MainPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: Routes.detailsPath.name,
            builder: (BuildContext context, GoRouterState state) {
              return DetailsPage(good: state.extra as Good);
            },
          ),
        ],
      ),
    ],
  );
}
