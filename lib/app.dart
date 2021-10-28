import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';
import 'package:tonlistarleit/logic/music_cubit.dart';
import 'package:tonlistarleit/presentation/home_screen.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key, required MusicRepository musicRepository})
      : _musicRepository = musicRepository,
        super(key: key);

  final MusicRepository _musicRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _musicRepository,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context) => MusicCubit(context.read<MusicRepository>()),
          child: const HomeScreen(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}
