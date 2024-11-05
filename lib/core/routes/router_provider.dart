import 'package:challenge_somnio/core/routes/routes.dart';
import 'package:challenge_somnio/core/routes/sommnio_router.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.home.path,
  debugLogDiagnostics: true,
  routes: SomnioRouter.routes,
);
