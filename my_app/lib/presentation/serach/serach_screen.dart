import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/colors/colors.dart';
import 'package:my_app/core/constant.dart';
import 'package:my_app/presentation/serach/widget/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: kGrey,
              ),
              backgroundColor: Colors.grey.withOpacity(0.3),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: kGrey,
              ),
              style: const TextStyle(color: kWhite),
            ),
            sizedHeight20,
            const Expanded(child: SearchResultScreen())
          ],
        ),
      )),
    );
  }
}
