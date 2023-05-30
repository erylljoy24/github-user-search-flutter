import 'package:flutter/material.dart';
import 'package:search_user_github/search_repo/data/model/git_state.dart';
import 'package:search_user_github/search_repo/presentation/pages/git_repo_detail.dart';
import 'package:search_user_github/search_repo/presentation/pages/search_screen.dart';


class AppRouter {
  static const String searchScreen = 'search_screen';
  static const String detailPage = 'detail_page';
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case searchScreen:
        return MaterialPageRoute(builder: (context) => const SearchScreen());
      case detailPage:
        Map<String, dynamic> arguments = settings.arguments as Map<String, dynamic>;
        User user = arguments['user'];
        int index = arguments['index'];
        return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => GitRepoDetail(
                user: user, index: index),
            transitionsBuilder: (_, a, __, c) => SlideTransition(position: Tween( //Will create a sliding effect transition
                begin: const Offset(1.0, 0.0),
                end: const Offset(0.0, 0.0))
                .animate(a), child: c)
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}