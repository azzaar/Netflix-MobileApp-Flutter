import 'package:flutter/material.dart';
import 'package:my_app/presentation/widget/app_bar_widget.dart';

class NewHotScreen extends StatelessWidget {
  const NewHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "New and Hot"),
        ),
        body: Center(
          child: Text("NewHotScreen"),
        ));
  }
}
