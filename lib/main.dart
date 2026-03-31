import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// الثيم
import 'core/theme/theme_provider.dart';

// شاشة تسجيل الدخول (سننشئها لاحقاً)
import 'features/auth/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            // الثيم
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: theme.isDarkMode
                ? ThemeMode.dark
                : ThemeMode.light,

            // البداية
            home: const LoginScreen(),
          );
        },
      ),
    );
  }
}
