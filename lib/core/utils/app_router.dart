import 'package:bookly_app/featurse/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../featurse/Splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
