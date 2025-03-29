import 'package:ai_assistance/core/theme/themes.dart';
import 'package:ai_assistance/presentation/providers/themeNotifier.dart';
import 'package:ai_assistance/presentation/screen/home_screen.dart';
import 'package:ai_assistance/presentation/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'data/model/message.dart';

void main () async {
  await dotenv.load(fileName: ".env");
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: darkMode,
      theme: lightMode,
      themeMode: themeMode,
      home: OnboardingScreen(),
    );
  }
}
