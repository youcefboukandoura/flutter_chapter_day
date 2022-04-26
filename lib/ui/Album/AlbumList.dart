import 'package:flutter/material.dart';
import 'package:flutter_chapter_day/repository/AlbumRepository.dart';
import 'package:flutter_chapter_day/ui/Album/AlbumTile.dart';

import '../../model/Album.dart';

class AlbumList extends StatefulWidget {
  const AlbumList({Key? key}) : super(key: key);

  @override
  State<AlbumList> createState() => _AlbumListState();
}

class _AlbumListState extends State<AlbumList> {
  late Future<List<Album>> albums;

  @override
  void initState() {
    super.initState();
    albums = fetchAlbumList();
  }

  @override
  Widget build(BuildContext context) {
    return getAlbums();
  }

  getAlbums() {
    return FutureBuilder<List<Album>>(
      future: albums,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return getList(snapshot.data!);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        // By default, show a loading spinner.
        return const CircularProgressIndicator();
      },
    );
  }

  getList(List<Album> albums) {
    return ListView.builder(
        itemCount: albums.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
         return AlbumTile(albums[index]);
        });
  }
}
