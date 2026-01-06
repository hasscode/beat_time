import 'package:beat_time_app/core/routing/custom_page_transtion_helper.dart';
import 'package:beat_time_app/core/routing/transition_type.dart';
import 'package:beat_time_app/features/auth/presentation/screens/create_account_screen.dart';
import 'package:beat_time_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:beat_time_app/features/onboarding/presentation/screens/app_onboarding.dart';
import 'package:beat_time_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => SplashScreen()),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => AppOnboarding(),
      ),
      GoRoute(
        path: '/signIn',
        pageBuilder: (context, state) =>
            CustomPageTransitionHelper.buildTransition(
              child:  SignInScreen(),
              key: state.pageKey,
              type: TransitionType.slideRight,
            ),
      ),


      GoRoute(
        path: '/createAccount',
        pageBuilder: (context, state) =>
            CustomPageTransitionHelper.buildTransition(
              child:  CreateAccountScreen(),
              key: state.pageKey,
              type: TransitionType.slideLeft,
            ),
      ),
    ],
  );
}
