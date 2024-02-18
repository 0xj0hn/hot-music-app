import 'package:flutter/material.dart';
import 'package:hotmusic/views/screens/home/home_drawer.dart';
import 'package:hotmusic/views/screens/music/music_player_screen.dart';
import 'package:hotmusic/views/widgets/artist_widget.dart';
import 'package:hotmusic/views/widgets/music_list_tile_preview_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isShownSearchBox = false;
  ScrollController artistsScrollController = ScrollController();
  FocusNode searchBoxFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Visibility(
          visible: isShownSearchBox,
          child: SearchBar(
            focusNode: searchBoxFocusNode,
            elevation: MaterialStatePropertyAll(0.3),
          ),
          replacement: Text("Music Streamer"),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isShownSearchBox = !isShownSearchBox;
              });
              searchBoxFocusNode.requestFocus();
            },
            icon: Icon(Icons.search_outlined),
          ),
        ],
      ),
      drawer: HomeDrawer(),
      body: ListView(
        children: [
          Scrollbar(
            controller: artistsScrollController,
            radius: Radius.circular(2),
            child: SingleChildScrollView(
              controller: artistsScrollController,
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
          ...List.generate(
            8,
            (index) => MusicPreview(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MusicPlayerScreen(
                    title: "Dream On",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
