import '../models/song.dart';

final List<Song> mockSongs = [
  const Song(
    id: '1',
    title: 'Звезда по имени Солнце',
    artist: 'Кино',
    duration: Duration(minutes: 3, seconds: 45),
    coverUrl: 'https://picsum.photos/seed/kino/200',
  ),
  const Song(
    id: '2',
    title: 'Кукушка',
    artist: 'Кино',
    duration: Duration(minutes: 6, seconds: 40),
    coverUrl: 'https://picsum.photos/seed/kino2/200',
  ),
  const Song(
    id: '3',
    title: 'Полковнику никто не пишет',
    artist: 'Би-2',
    duration: Duration(minutes: 4, seconds: 54),
    coverUrl: 'https://picsum.photos/seed/bi2/200',
  ),
  const Song(
    id: '4',
    title: 'Районы-кварталы',
    artist: 'Звери',
    duration: Duration(minutes: 3, seconds: 20),
    coverUrl: 'https://picsum.photos/seed/zveri/200',
  ),
  const Song(
    id: '5',
    title: 'Я свободен',
    artist: 'Кипелов',
    duration: Duration(minutes: 7, seconds: 12),
    coverUrl: 'https://picsum.photos/seed/kipelov/200',
  ),
];
