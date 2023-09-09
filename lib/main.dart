import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slack_identify/screen/webview.dart';
import 'package:slack_identify/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slack Identify',
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      themeMode: ThemeMode.system,
      home: const WebViewPage(),
    );
  }
}