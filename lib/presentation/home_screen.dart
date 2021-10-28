import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';
import 'package:tonlistarleit/logic/album_details_cubit.dart' as adc;
import 'package:tonlistarleit/logic/music_cubit.dart';
import 'package:tonlistarleit/presentation/album_details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  final _searchController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'type in journal name...',
              hintStyle: const TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              border: InputBorder.none,
              suffixIcon: IconButton(
                  onPressed: () => context
                      .read<MusicCubit>()
                      .fetchMusic(_searchController.text),
                  icon: const Icon(Icons.search_rounded))),
          // style: TextStyle(
          //   color: Colors.white,
          // ),
        ),
        centerTitle: true,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: BlocBuilder<MusicCubit, MusicState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is ErrorState) {
              return const Center(
                child: Icon(Icons.close),
              );
            } else if (state is LoadedState) {
              final musicList = state.musicList;

              return ListView.builder(
                  itemCount: musicList.length,
                  itemBuilder: (context, index) {
                    final album = musicList[index];
                    return InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlocProvider.value(
                              value: adc.AlbumDetailsCubit(context.read<MusicRepository>()),
                              child: const AlbumDetailsScreen()))),
                      child: Card(
                        child: ListTile(
                          leading: album.mediumImage == null || album.mediumImage!.isEmpty
                              ? null
                              : Image.network(album.mediumImage!),
                          title: Text(album.name),
                          subtitle: Text(album.artist),
                        ),
                      ),
                    );
                  });
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
