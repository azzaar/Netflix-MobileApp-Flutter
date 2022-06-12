import 'package:flutter/material.dart';
import 'package:my_app/core/constant.dart';
import 'package:my_app/presentation/serach/widget/search_title.dart';

const imagrUrl =
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleWidget(title: "Movies & TV"),
        sizedHeight20,
        Expanded(
            child: GridView.count(
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.4,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: NetworkImage(
                imagrUrl,
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
