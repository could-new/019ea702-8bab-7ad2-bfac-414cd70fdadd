import 'package:flutter/material.dart';
import '../data/mock_songs.dart';
import '../models/song.dart';

class SongListScreen extends StatelessWidget {
  const SongListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Караоке База'),
      ),
      body: ListView.builder(
        itemCount: mockSongs.length,
        itemBuilder: (context, index) {
          final song = mockSongs[index];
          return ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(song.title),
            subtitle: Text(song.artist),
            trailing: IconButton(
              icon: const Icon(Icons.mic),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/recording',
                  arguments: song,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
