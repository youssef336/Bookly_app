import 'package:bookly_app/features/home/presentation/view/home.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
    ],
  );
}
