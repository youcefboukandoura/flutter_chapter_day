import 'package:flutter/material.dart';

import '../../model/Album.dart';

class AlbumTile extends StatelessWidget {
  final Album? album;

  const AlbumTile({Key? key, @required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(album?.title ?? "");
  }
}
