import 'package:docdoc_app/features/home_pages/home/ui/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          width: double.infinity,
          child: const Column(
            children: [
              HomeAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
