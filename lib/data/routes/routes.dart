import 'package:go_router/go_router.dart';
import '../../presentation/page/login_page.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginPage(),
    )
  ],
);
