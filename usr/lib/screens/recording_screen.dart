import 'package:flutter/material.dart';
import '../models/song.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({super.key});

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  bool isRecording = false;

  @override
  Widget build(BuildContext context) {
    final song = ModalRoute.of(context)?.settings.arguments as Song?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Запись: ${song?.title ?? 'Неизвестно'}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.mic_none,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 32),
            Text(
              isRecording ? 'Идет запись...' : 'Нажмите для старта',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  isRecording = !isRecording;
                });
              },
              icon: Icon(isRecording ? Icons.stop : Icons.fiber_manual_record),
              label: Text(isRecording ? 'Остановить' : 'Начать запись'),
              style: ElevatedButton.styleFrom(
                backgroundColor: isRecording ? Colors.red : Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
            const SizedBox(height: 32),
            if (!isRecording)
              ElevatedButton(
                onPressed: () {
                  if (song != null) {
                    final recordedTrack = RecordedTrack(
                      id: DateTime.now().millisecondsSinceEpoch.toString(),
                      songId: song.id,
                      songTitle: song.title,
                      recordedAt: DateTime.now(),
                      filePath: 'mock_path.mp3',
                    );
                    Navigator.pushReplacementNamed(
                      context,
                      '/editor',
                      arguments: recordedTrack,
                    );
                  }
                },
                child: const Text('Перейти к редактированию'),
              ),
          ],
        ),
      ),
    );
  }
}
