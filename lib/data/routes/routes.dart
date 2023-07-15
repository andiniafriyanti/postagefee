import 'package:go_router/go_router.dart';
import 'package:postagecheck/presentation/page/home_page.dart';
import '../../presentation/page/login_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => HomePage(),
    )
  ],
);
