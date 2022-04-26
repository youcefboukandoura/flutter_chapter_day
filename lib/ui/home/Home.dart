import 'package:flutter/material.dart';

import '../Album/AlbumList.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => RandomWordsState();
}

class RandomWordsState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Album list'),
        ),
        body: const AlbumList());
  }
}

