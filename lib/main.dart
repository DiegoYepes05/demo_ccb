import 'package:demo_ccb/config/config.dart';
import 'package:demo_ccb/config/plugins/quick_actions_plugin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  QuickActionsPlugin.registerActions();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Demo ccb',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
