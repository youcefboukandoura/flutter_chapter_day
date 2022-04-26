import 'package:flutter/material.dart';

import '../../model/Album.dart';

class AlbumTile extends StatelessWidget {
  final Album album;

  AlbumTile(this.album);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(album.title),
        const Divider(),
      ],
    );
  }
}
