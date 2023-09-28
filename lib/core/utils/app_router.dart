import 'package:bookly_app/featurse/home/presentaion/views/book_details_view.dart';
import 'package:bookly_app/featurse/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';
import '../../featurse/Splash/presentation/views/splash_view.dart';
import '../../featurse/search/presentation/view/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const ksearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
