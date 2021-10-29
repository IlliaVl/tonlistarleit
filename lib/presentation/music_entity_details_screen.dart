import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonlistarleit/logic/album_details_cubit.dart';

class MusicEntityDetailsScreen extends StatelessWidget {
  const MusicEntityDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Album Details'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<AlbumDetailsCubit, AlbumDetailsState>(
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
              final albumDetails = state.albumDetails;

              return Container(width: 50, height: 50, color: Colors.green);
              // return ListView.builder(
              //     itemCount: musicList.length,
              //     itemBuilder: (context, index) {
              //       final album = musicList[index];
              //       return Card(
              //         child: ListTile(
              //           leading: album.mediumImage == null
              //               ? null
              //               : Image.network(album.mediumImage!),
              //           title: Text(album.name),
              //           subtitle: Text(album.artist),
              //         ),
              //       );
              //     });
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
