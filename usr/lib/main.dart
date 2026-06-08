import 'package:flutter/material.dart';

import 'screens/song_list_screen.dart';
import 'screens/recording_screen.dart';
import 'screens/editor_screen.dart';

void main() {
  runApp(const KaraokeApp());
}

class KaraokeApp extends StatelessWidget {
  const KaraokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Караоке Студия',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SongListScreen(),
        '/record': (context) => const RecordingScreen(),
        '/editor': (context) => const EditorScreen(),
      },
    );
  }
}
