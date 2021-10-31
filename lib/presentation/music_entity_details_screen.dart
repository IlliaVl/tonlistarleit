import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonlistarleit/logic/music_entity_details_cubit.dart';
import 'package:tonlistarleit/data/models/tag.dart' as pure_tag;
import 'package:url_launcher/url_launcher.dart';

class MusicEntityDetailsScreen extends StatelessWidget {
  const MusicEntityDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),
      body: BlocConsumer<MusicEntityDetailsCubit, MusicEntityDetailsState>(
        listener: (context, state) => state is MusicEntityDetailsErrorState
            ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.message,
                    style: const TextStyle(color: Colors.red)),
              ))
            : null,
        builder: (context, state) {
          if (state is MusicEntityDetailsLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is MusicEntityDetailsErrorState) {
            return const Center(
              child: Icon(Icons.close, color: Colors.red),
            );
          } else if (state is MusicEntityDetailsLoadedState) {
            final musicEntityDetails = state.musicEntityDetails;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 24),
                    if (musicEntityDetails.imageUrl.isNotEmpty) ...[
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(musicEntityDetails.imageUrl),
                      ),
                      const SizedBox(height: 16),
                    ],
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          musicEntityDetails.titleKey + ': ',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Expanded(
                          child: Text(musicEntityDetails.title,
                              style: Theme.of(context).textTheme.bodyText2),
                        ),
                      ],
                    ),
                    const Divider(height: 16, thickness: 1),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (musicEntityDetails.subtitleKey ?? '') + ': ',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Expanded(
                          child: Text(musicEntityDetails.subtitle ?? '',
                              style: Theme.of(context).textTheme.bodyText2),
                        ),
                      ],
                    ),
                    if (musicEntityDetails.url != null) ...[
                      const Divider(height: 16, thickness: 1),
                      TextButton(
                          onPressed: () => launch(musicEntityDetails.url!),
                          child: const Text('Open in Last.fm')),
                    ],
                    if (musicEntityDetails.tags != null &&
                        musicEntityDetails.tags!.isNotEmpty) ...[
                      const Divider(height: 16, thickness: 1),
                      Wrap(
                        children: musicEntityDetails.tags!
                            .map((tag) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(color: Colors.blue),
                                      ),
                                      onPressed: () => launch(tag.url),
                                      child: Text(tag.name)),
                                ))
                            .toList(),
                      ),
                    ],
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
