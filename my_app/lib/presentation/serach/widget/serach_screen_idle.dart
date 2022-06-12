import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/colors/colors.dart';
import 'package:my_app/core/constant.dart';
import 'package:my_app/presentation/serach/widget/search_title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/uzIGtyS6bbnJzGsPL93WCF1FWm8.jpg';

class SearchScreenTile extends StatelessWidget {
  const SearchScreenTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitleWidget(title: "Top Searches"),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: ((context, index) => const TopSerachTile()),
            separatorBuilder: (context, index) => sizedHeight20,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSerachTile extends StatelessWidget {
  const TopSerachTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          width: screenWidth * 0.3,
          height: 100,
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage(imageUrl))),
        ),
        boxWidth10,
        const Expanded(
            child: Text(
          "Movie Name",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        )),
        const CircleAvatar(
          backgroundColor: kWhite,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: kBalack,
            radius: 23,
            child: Icon(
              CupertinoIcons.play_arrow,
              color: kWhite,
            ),
          ),
        )
      ],
    );
  }
}
