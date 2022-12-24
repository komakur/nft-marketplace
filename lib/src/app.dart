import 'package:flutter/material.dart';
import 'package:nft_marketplace/src/sign_up.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: SignUp(),
      ),
    );
  }
}
