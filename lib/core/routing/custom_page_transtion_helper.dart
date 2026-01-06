// lib/core/routing/custom_page_transition_helper.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'transition_type.dart';

class CustomPageTransitionHelper {
  static CustomTransitionPage buildTransition({
    required Widget child,
    required LocalKey key,
    TransitionType type = TransitionType.slideRight,
    Duration? duration,
    Curve? curve,
  }) {
    return CustomTransitionPage(
      key: key,
      child: child,
      transitionDuration: duration ?? const Duration(milliseconds: 400),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation = CurvedAnimation(
          parent: animation,
          curve: curve ?? Curves.easeInOut,
        );

        switch (type) {
          case TransitionType.fade:
            return FadeTransition(
              opacity: curveAnimation,
              child: child,
            );

          case TransitionType.slideRight:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(curveAnimation),
              child: child,
            );

          case TransitionType.slideLeft:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1.0, 0.0),
                end: Offset.zero,
              ).animate(curveAnimation),
              child: child,
            );

          case TransitionType.slideUp:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 1.0),
                end: Offset.zero,
              ).animate(curveAnimation),
              child: child,
            );

          case TransitionType.slideDown:
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, -1.0),
                end: Offset.zero,
              ).animate(curveAnimation),
              child: child,
            );

          case TransitionType.scale:
            return ScaleTransition(
              scale: curveAnimation,
              child: child,
            );

          case TransitionType.rotate:
            return RotationTransition(
              turns: curveAnimation,
              child: child,
            );
        }
      },
    );
  }
}