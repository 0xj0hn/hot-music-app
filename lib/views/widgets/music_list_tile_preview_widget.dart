import 'package:flutter/material.dart';

class MusicPreview extends StatelessWidget {
  const MusicPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text("Dream On"),
        subtitle: Text("02:31"),
        leading: CircleAvatar(
          foregroundImage: NetworkImage(
              "http://hot-music.surge.sh/_next/static/media/song.cd859d31.jpg"),
        ),
      ),
    );
  }
}
