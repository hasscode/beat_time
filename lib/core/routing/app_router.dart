import 'package:beat_time_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:beat_time_app/features/onboarding/presentation/screens/app_onboarding.dart';
import 'package:beat_time_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter{
  static final  GoRouter router = GoRouter(

      initialLocation: '/splash',
      routes: [
        GoRoute(path: '/splash',
        builder: (context,state)=> SplashScreen()
        ),
        GoRoute(path: '/onboarding',
            builder: (context,state)=> AppOnboarding()
        ),
        GoRoute(path: '/signIn',
            builder: (context,state)=> SignInScreen()
        ),
        GoRoute(path: '/splash',
            builder: (context,state)=> SplashScreen()
        )

      ]);
}