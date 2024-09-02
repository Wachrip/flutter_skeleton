import 'package:flutter/material.dart';

import '../../core/constants/app_bar_title_constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(MAIN_SCREEN_APPBAR_TITLE),
      ),
    );
  }
}
