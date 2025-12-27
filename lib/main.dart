import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:users/features/config/dependency_injection.dart' ;
import 'package:users/features/core/theme/app_theme.dart';
import 'package:users/features/presentation/pages/user_list_page.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'User App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const UserListPage(),
    );
  }
}