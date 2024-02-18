import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  final String title;
  const MusicPlayerScreen({super.key, required this.title});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  double val = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 10,
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(Colors.red, BlendMode.color),
                    child: Image.network(
                      "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fww1.prweb.com%2Fprfiles%2F2006%2F05%2F23%2F389860%2FeditIMG1709.jpg&f=1&nofb=1&ipt=c287f27771403bbf0287b0336eb8c52099d50cd40812ba1af6bbacfd513c36e3&ipo=images",
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 125,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text("00:00"),
                ),
                Expanded(
                  flex: 6,
                  child: Slider(
                    value: val,
                    onChanged: (newVal) {
                      setState(() {
                        val = newVal;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text("--:--"),
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.first_page_outlined),
                    onPressed: () {},
                  ),
                  IconButton.outlined(
                    icon: Icon(Icons.play_arrow),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.last_page_outlined),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
