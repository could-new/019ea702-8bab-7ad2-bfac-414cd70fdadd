import 'package:flutter/material.dart';
import '../models/song.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  double volume = 0.8;
  double reverb = 0.3;
  double echo = 0.2;

  @override
  Widget build(BuildContext context) {
    final track = ModalRoute.of(context)?.settings.arguments as RecordedTrack?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Мастеринг и Редактор'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Трек: ${track?.songTitle ?? 'Неизвестно'}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 32),
            _buildSlider('Громкость голоса', volume, (val) {
              setState(() => volume = val);
            }),
            const SizedBox(height: 16),
            _buildSlider('Реверберация', reverb, (val) {
              setState(() => reverb = val);
            }),
            const SizedBox(height: 16),
            _buildSlider('Эхо', echo, (val) {
              setState(() => echo = val);
            }),
            const Spacer(),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Трек успешно сохранен!')),
                  );
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                icon: const Icon(Icons.save),
                label: const Text('Сохранить финальный микс'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider(String label, double value, ValueChanged<double> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        Slider(
          value: value,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
