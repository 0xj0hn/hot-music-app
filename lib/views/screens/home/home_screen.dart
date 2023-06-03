import 'package:flutter/material.dart';
import 'package:hotmusic/views/screens/home/home_drawer.dart';
import 'package:hotmusic/views/widgets/artist_widget.dart';
import 'package:hotmusic/views/widgets/music_list_tile_preview_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Streamer'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      drawer: HomeDrawer(),
      body: ListView(
        children: [
          Scrollbar(
            radius: Radius.circular(2),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [...List.generate(12, (index) => ArtistWidget())],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Popular",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          ...List.generate(8, (index) => MusicPreview()),
        ],
      ),
    );
  }
}
