import 'package:flutter/material.dart';
import '../widgets/FloatingButtons/floating_buttons.dart';
import '../widgets/home_page_view_body.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(top: false, bottom: false, child: HomePageViewBody()),
      floatingActionButtonLocation: .endContained,
      floatingActionButton: FloatingButtons(),
    );
  }
}
