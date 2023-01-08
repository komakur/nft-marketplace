import 'package:flutter/material.dart';
import 'package:nft_marketplace/src/screens/homepage_screen/homepage_screen.dart';
import 'package:nft_marketplace/themes/main_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MainTheme.theme,
      home: const Homepage(),
    );
  }
}
