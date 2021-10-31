import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/repositories/music_repository.dart';
import 'package:tonlistarleit/logic/music_entity_details_cubit.dart';
import 'package:tonlistarleit/logic/music_entities_cubit.dart';
import 'package:tonlistarleit/logic/music_entity_type_cubit.dart';
import 'package:tonlistarleit/presentation/music_entity_details_screen.dart';

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
  final _searchController = TextEditingController();

  _search(String searchText) =>
      context.read<MusicEntitiesCubit>().fetchMusicEntities(
          searchText, context.read<MusicEntityTypeCubit>().state.entityType);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          textInputAction: TextInputAction.search,
          onSubmitted: _search,
          controller: _searchController,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: 'Type in name...',
              hintStyle: const TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              border: InputBorder.none,
              suffixIcon: IconButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    _search(_searchController.text);
                  },
                  icon: const Icon(Icons.search_rounded))),
        ),
        actions: [
          const SizedBox(width: 8.0),
          BlocBuilder<MusicEntityTypeCubit, MusicEntityTypeState>(
            builder: (context, state) {
              return DropdownButton<EntityType>(
                value: state.entityType,
                onChanged:
                    context.read<MusicEntityTypeCubit>().changeMusicEntityType,
                items: EntityType.values.map((EntityType value) {
                  return DropdownMenuItem<EntityType>(
                    value: value,
                    child: Text(value.stringValue),
                  );
                }).toList(),
              );
            },
          )
        ],
        centerTitle: true,
      ),
      body: Center(
        child: BlocConsumer<MusicEntitiesCubit, MusicEntitiesState>(
          listener: (context, state) => state is MusicEntitiesErrorState
              ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.message,
                      style: const TextStyle(color: Colors.red)),
                ))
              : null,
          builder: (context, state) {
            if (state is MusicEntitiesLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is MusicEntitiesErrorState) {
              return const Center(
                child: Icon(Icons.close, color: Colors.red),
              );
            } else if (state is MusicEntitiesLoadedState) {
              final musicEntities = state.musicEntitiesList;

              return ListView.builder(
                  itemCount: musicEntities.length,
                  itemBuilder: (context, index) {
                    final musicEntity = musicEntities[index];
                    return InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => BlocProvider.value(
                              value: MusicEntityDetailsCubit(
                                context.read<MusicRepository>(),
                              )..getMusicEntityDetails(musicEntity),
                              child: const MusicEntityDetailsScreen()))),
                      child: Card(
                        child: ListTile(
                          leading: musicEntity.imageUrl.isEmpty
                              ? null
                              : Image.network(musicEntity.imageUrl),
                          title: Text(musicEntity.title),
                          subtitle: Text(musicEntity.subtitle ?? ''),
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
