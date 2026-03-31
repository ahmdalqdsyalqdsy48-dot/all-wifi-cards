import 'package:flutter/material.dart';

// شاشات الأدوار (سننشئها لاحقاً)
import '../features/admin/screens/admin_dashboard.dart';
import '../features/agent/screens/agent_dashboard.dart';
import '../features/user/screens/user_home.dart';

class AppRouter {
  static Widget getHomeScreen(String role) {
    switch (role) {
      case 'super_admin':
        return const AdminDashboard();

      case 'agent':
        return const AgentDashboard();

      case 'user':
        return const UserHome();

      default:
        return const UserHome();
    }
  }
}
