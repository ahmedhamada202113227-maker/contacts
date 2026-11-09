import 'package:contact_app/features/home/presentation/pages/home_page_view.dart';
import 'package:contact_app/features/splash/presentation/pages/splash_page_view.dart';
import 'package:contact_app/utils/app_colors.dart';
import 'package:contact_app/utils/app_routes.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.darkBlue,
      ),
      routes: {
        AppRoutes.splash :(context) => SplashPageView(),
        AppRoutes.home: (context) => HomePageView(),
      },
      home: SplashPageView(),
    );
  }
}
