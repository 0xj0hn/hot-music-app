import 'package:flutter/material.dart';

class ArtistWidget extends StatelessWidget {
  const ArtistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            //color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: const [
              CircleAvatar(
                radius: 50,
                foregroundImage: NetworkImage(
                  "http://hot-music.surge.sh/artists/apache207.jpg",
                  scale: 200,
                ),
              ),
              Text(
                "Apache",
              ),
              Text(
                "Artist",
                style: TextStyle(fontSize: 11, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
