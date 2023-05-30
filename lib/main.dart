import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:search_user_github/core/app_router.dart';

main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: AppRouter.homeScreen,
      initialRoute: AppRouter.searchScreen,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
