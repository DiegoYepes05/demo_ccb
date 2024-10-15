import 'package:demo_ccb/features/home/home.dart';
import 'package:demo_ccb/features/noticias/noticias_screen.dart';
import 'package:demo_ccb/features/otra/otra_screen.dart';
import 'package:demo_ccb/features/term/term_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/noticias',
    builder: (context, state) => const NoticiasScreen(),
  ),
  GoRoute(
    path: '/term',
    builder: (context, state) => const TermScreen(),
  ),
  GoRoute(
    path: '/otra',
    builder: (context, state) => const OtraScreen(),
  ),
]);
