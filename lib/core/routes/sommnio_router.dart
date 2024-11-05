import 'package:challenge_somnio/features/posts/ui/screens/home_page.dart';
import 'package:challenge_somnio/core/routes/routes.dart';
import 'package:go_router/go_router.dart';

class SomnioRouter {
  static List<GoRoute> routes = [
    GoRoute(
      name: Routes.home.name,
      path: Routes.home.path,
      builder: (context, state) => const HomePage(),
    ),
  ];
}
