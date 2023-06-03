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
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fww1.prweb.com%2Fprfiles%2F2006%2F05%2F23%2F389860%2FeditIMG1709.jpg&f=1&nofb=1&ipt=c287f27771403bbf0287b0336eb8c52099d50cd40812ba1af6bbacfd513c36e3&ipo=images",
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
