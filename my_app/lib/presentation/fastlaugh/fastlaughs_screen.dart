import 'package:flutter/material.dart';
import 'package:my_app/presentation/fastlaugh/widget/video_list_view.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(
            10,
            (index) => VideoListSCreen(
                  index: index,
                )),
      )),
    );
  }
}
