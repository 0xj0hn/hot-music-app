import 'package:flutter/material.dart';
import 'package:hotmusic/views/screens/home/home_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hot Music'),
      ),
      drawer: HomeDrawer(),
      body: Center(
        child: Text("Hello world"),
      ),
    );
  }
}
