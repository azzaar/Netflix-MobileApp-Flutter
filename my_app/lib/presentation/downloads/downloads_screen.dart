// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/core/colors/colors.dart';
import 'package:my_app/presentation/widget/app_bar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);

  final List imageList = [
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5cnLoWq9o5tuLe1Zq4BTX4LwZ2B.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vKDUmKO6F9bSKKyHhg7YGbgcEeF.jpg',
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Downloads",
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            Row(
              children: const [
                SizedBox(width: 10),
                Icon(
                  Icons.settings,
                  color: kWhite,
                ),
                SizedBox(width: 10),
                Text(
                  "Smart Downloads",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 19),
            Text(
              textAlign: TextAlign.center,
              "Introducing Downloads For you",
              style: TextStyle(
                  fontFamily: 'RobotoMono',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: kWhite),
            ),
            const SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              "We will download a Personalised selection of Movies and shows for you,so there is always something to watch on your Device ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 22,
            ),
            SizedBox(
              width: size.width,
              height: size.width,
              child: Stack(alignment: Alignment.center, children: [
                CircleAvatar(
                  radius: size.width * 0.4,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                DownloadsImageWidget(
                  imageList: imageList[2],
                  angle: 17,
                  margin: const EdgeInsets.only(left: 170, bottom: 20),
                  size: Size(size.width * 0.4, size.width * 0.58),
                ),
                DownloadsImageWidget(
                  imageList: imageList[0],
                  angle: -17,
                  margin: const EdgeInsets.only(right: 170, bottom: 20),
                  size: Size(size.width * 0.4, size.width * 0.58),
                ),
                DownloadsImageWidget(
                  imageList: imageList[1],
                  angle: 0,
                  margin: const EdgeInsets.only(top: 8),
                  size: Size(size.width * 0.4, size.width * 0.60),
                )
              ]),
            ),
            SizedBox(
              height: 25,
            ),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              color: Colors.blue,
              child: const Text(
                "Set Up",
                style: TextStyle(color: kWhite),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              color: const Color.fromARGB(255, 248, 248, 248),
              child: const Text(
                "See What you can Download",
                style: TextStyle(color: backgroundColor),
              ),
            )
          ],
        ));
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {Key? key,
      required this.imageList,
      required this.angle,
      required this.margin,
      required this.size})
      : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(imageList))),
      ),
    );
  }
}
