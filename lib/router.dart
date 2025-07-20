import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:gym_dashboard_project/view/pages/bodybuilder_page.dart';
import 'package:gym_dashboard_project/view/pages/dashboard_page.dart';
import 'package:gym_dashboard_project/view/pages/main_page.dart';
import 'package:gym_dashboard_project/view/pages/workout_plans.dart';
import 'package:path/path.dart';

//slide to right animation
// var slide_right_transition = (context, animation, secondaryAnimation, child) {
//             const begin = Offset(1.0, 0.0);
//             const end = Offset.zero;
//             final tween = Tween(begin: begin, end: end);
//             final offsetAnimation = animation.drive(tween);

//             return SlideTransition(
//               position: offsetAnimation,
//               child: child,
//             );
// };


final GoRouter appRouter = GoRouter(initialLocation: '/', routes: [
  ShellRoute(
      builder: (context, state, child) => MainPage(child: child),
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          pageBuilder: (context, state) {
            return NoTransitionPage(child: DashboardPage(), key: state.pageKey);
          },
        ),
        GoRoute(
          path: '/bodybuilders',
          name: 'bodybuilers',
          pageBuilder: (context, state) {
            return NoTransitionPage(child: BodyBuildersPage(), key: state.pageKey);
          },
        ),
        GoRoute(
          path: '/workout-plans',
          name: 'workout-plans',
          pageBuilder: (context, state) {
            return NoTransitionPage(child: WorkOutPlans(), key: state.pageKey);
          },
        ),
      ])
]);
