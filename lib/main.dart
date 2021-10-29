import 'package:flutter/material.dart';
import 'package:tonlistarleit/app.dart';
import 'package:tonlistarleit/data/models/album_raw.dart';
import 'package:tonlistarleit/data/models/music_entity_raw.dart';
import 'package:tonlistarleit/data/models/track_raw.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';
import 'package:tonlistarleit/presentation/home_screen.dart';

void main() => runApp(MusicApp(musicRepository: MusicRepository()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final trackRaw = TrackRaw.fromMap({'name': 'track1', 'artist': 'artist1'});
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }

  test(MusicEntityRaw musicEntityRaw) {
    final key = musicEntityRaw.key1;
  }
}
