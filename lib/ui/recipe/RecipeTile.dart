import 'package:flutter/material.dart';

import '../../domain/model/Album.dart';



class AlbumTile extends StatelessWidget {
  final Album album;

  const AlbumTile(this.album);

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
