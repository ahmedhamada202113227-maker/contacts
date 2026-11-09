import 'package:flutter/material.dart';
import '../widgets/splash_page_view_body.dart';

class SplashPageView extends StatelessWidget {
  const SplashPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashPageViewBody()),
    );
  }
}
