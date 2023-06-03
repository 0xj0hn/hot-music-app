import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> mainOptions = [
      {
        "label": "Home",
        "onPressed": () {},
        "icon": Icon(Icons.home_outlined),
      },
      {
        "label": "Library",
        "onPressed": () {},
        "icon": Icon(Icons.music_note_outlined),
      }
    ];

    List<Map<String, dynamic>> yourCollectionOptions = [
      {
        "label": "Liked Songs",
        "onPressed": () {},
        "icon": Icon(Icons.thumb_up_outlined),
      },
      {
        "label": "Favorite Artist",
        "onPressed": () {},
        "icon": Icon(Icons.person_pin_outlined),
      },
      {
        "label": "Playlist",
        "onPressed": () {},
        "icon": Icon(Icons.playlist_play),
      }
    ];
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 45,
              child: Container(
                height: 50,
                width: 50,
                child: FlutterLogo(),
              ),
            ),
          ),
          Text("John Doe"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Main",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          ...List.generate(
            mainOptions.length,
            (index) => ListTile(
              title: Text(mainOptions[index]["label"].toString()),
              onTap: () => mainOptions[index]["onPressed"],
              leading: mainOptions[index]["icon"],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Your Collection",
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          ...List.generate(
            yourCollectionOptions.length,
            (index) => ListTile(
              title: Text(yourCollectionOptions[index]["label"].toString()),
              onTap: () => yourCollectionOptions[index]["onPressed"],
              leading: yourCollectionOptions[index]["icon"],
            ),
          ),
          Divider(),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info_outline),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
