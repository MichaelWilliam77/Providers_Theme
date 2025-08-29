import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/providers/counter_provider.dart';
import 'package:untitled4/providers/theme_provider.dart';
import 'package:untitled4/screens/home_screen.dart';
import 'package:untitled4/screens/settings_screen.dart';
import 'package:untitled4/screens/summary_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
  // runApp( // ChangeNotifierProvider( // create: (_) => CounterProvider(), // child: const MyApp(), // ), // ); // }// only one provider

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "counter with theme",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.themeMode,
      home: const HomePage(),
      routes: {
        '/setting': (context) => const SettingsPage(),
        '/summary': (context) => const InfoPage(),
      },
    );
  }
}

