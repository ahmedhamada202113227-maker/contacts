import 'package:contact_app/utils/app_assets.dart';
import 'package:contact_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class SplashPageViewBody extends StatefulWidget {
  const SplashPageViewBody({super.key});

  @override
  State<SplashPageViewBody> createState() => _SplashPageViewBodyState();
}

class _SplashPageViewBodyState extends State<SplashPageViewBody> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 3200),
      // ignore: use_build_context_synchronously
      () => Navigator.pushReplacementNamed(context, AppRoutes.home),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.assetsImagesSplashRouteSplash));
  }
}
