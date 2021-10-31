/// {@template music_entity_fetch_failure}
/// Thrown if during fetching music entities process failure occurs.
/// {@endtemplate}
class MusicEntityFetchFailure implements Exception {
  /// {@macro music_entity_fetch_failure}
  const MusicEntityFetchFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// The associated error message.
  final String message;
}
