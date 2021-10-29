enum EntityType {
  album,
  track,
  artist,
}

extension EntityKeyEx on EntityType {
  String get stringValue => describeEnum();

  String describeEnum() {
    final String description = toString();
    final int indexOfDot = description.indexOf('.');
    assert(
    indexOfDot != -1 && indexOfDot < description.length - 1,
    'The provided object "$this" is not an enum.',
    );
    return description.substring(indexOfDot + 1);
  }
}
