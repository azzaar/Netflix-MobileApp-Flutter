import 'package:flutter/material.dart';
import 'package:my_app/presentation/downloads/downloads_screen.dart';
import 'package:my_app/presentation/fastlaugh/fastlaughs_screen.dart';
import 'package:my_app/presentation/home/home_screen.dart';
import 'package:my_app/presentation/main_screen/widget/bottom_navigation_bar.dart';
import 'package:my_app/presentation/new&hot/new_hot_screen.dart';
import 'package:my_app/presentation/serach/serach_screen.dart';

class MainScreenPage extends StatelessWidget {
  MainScreenPage({Key? key}) : super(key: key);

  final _pages = [
    const HomeScreen(),
    const NewHotScreen(),
    const FastLaughsScreen(),
    const SearchScreen(),
    DownloadsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
