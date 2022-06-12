import 'package:flutter/material.dart';
import 'package:my_app/core/colors/colors.dart';

const imagrUrl =
    'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg';

class VideoListSCreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final index;

  const VideoListSCreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left
                CircleAvatar(
                  radius: 20,
                  backgroundColor: kBalack.withOpacity(0.6),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off_rounded,
                        color: kWhite,
                      )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(imagrUrl),
                      ),
                    ),
                    VideoActionIcon(title: 'LOL', icon: Icons.emoji_emotions),
                    VideoActionIcon(title: 'ADD', icon: Icons.add),
                    VideoActionIcon(title: 'SHARE', icon: Icons.share),
                    VideoActionIcon(title: 'PLAY', icon: Icons.play_arrow),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  const VideoActionIcon({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWhite,
            size: 30,
          ),
          Text(title)
        ],
      ),
    );
  }
}
