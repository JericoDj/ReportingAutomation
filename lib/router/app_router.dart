import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reportautomation/features/home/screens/main_home_screen.dart';
import 'package:reportautomation/features/report_generator/screens/report_home_screen.dart';
import 'package:reportautomation/features/interview_answer/screens/interview_answer_screen.dart';

class AppRouter {
  static final
  router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const MainHomeScreen()),
      GoRoute(
        path: '/report',
        builder: (context, state) => const ReportHomeScreen(),
      ),
      GoRoute(
        path: '/interview',
        builder: (context, state) => const InterviewAnswerScreen(),
      ),
      GoRoute(
        path: '/report/view',
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text("Report View - TODO"))),
      ),
      GoRoute(
        path: '/report/sign',
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text("Report Sign - TODO"))),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Error: ${state.error}'))),
  );
}
