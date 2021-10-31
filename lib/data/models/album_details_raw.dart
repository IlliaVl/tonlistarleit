import 'package:collection/collection.dart';

class AlbumDetailsRaw {
  late final Album? album;

  AlbumDetailsRaw({required this.album});

  AlbumDetailsRaw.fromJson(Map<String, dynamic> json) {
    album = json['album'] != null && json['album'] is! String
        ? Album.fromJson(json['album'])
        : null;
  }

  Map<String, dynamic> toJson() => {'album': album?.toJson()};
}

class Album {
  late final String artist;
  late final String? mbid;
  late final Tags? tags;
  late final String playcount;
  late final List<Image> image;
  late final Tracks? tracks;
  late final String url;
  late final String name;
  late final String listeners;
  late final Wiki? wiki;

  Album(
      {required this.artist,
      required this.mbid,
      required this.tags,
      required this.playcount,
      required this.image,
      required this.tracks,
      required this.url,
      required this.name,
      required this.listeners,
      required this.wiki});

  String? get extralargeImage =>
      image.firstWhereOrNull((image) => image.size == 'extralarge')?.text;

  String? get largeImage =>
      image.firstWhereOrNull((image) => image.size == 'large')?.text;

  Album.fromJson(Map<String, dynamic> json) {
    artist = json['artist'];
    mbid = json['mbid'];
    tags = json['tags'] != null && json['tags'] is! String
        ? Tags.fromJson(json['tags'])
        : null;
    playcount = json['playcount'];
    if (json['image'] != null && json['image'] is! String) {
      image = <Image>[];
      json['image'].forEach((v) {
        image.add(Image.fromJson(v));
      });
    }
    tracks = json['tracks'] != null && json['tracks'] is! String
        ? Tracks.fromJson(json['tracks'])
        : null;
    url = json['url'];
    name = json['name'];
    listeners = json['listeners'];
    wiki = json['wiki'] != null && json['wiki'] is! String
        ? Wiki.fromJson(json['wiki'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['artist'] = artist;
    data['mbid'] = mbid;
    data['tags'] = tags?.toJson();
    data['playcount'] = playcount;
    data['image'] = image.map((v) => v.toJson()).toList();
    data['tracks'] = tracks?.toJson();
    data['url'] = url;
    data['name'] = name;
    data['listeners'] = listeners;
    data['wiki'] = wiki?.toJson();
    return data;
  }
}

class Tags {
  late final List<Tag> tag;

  Tags({required this.tag});

  Tags.fromJson(Map<String, dynamic> json) {
    if (json['tag'] != null && json['tag'] is! String) {
      tag = <Tag>[];
      json['tag'].forEach((v) {
        tag.add(Tag.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() => {'tag': tag.map((v) => v.toJson()).toList()};
}

class Tag {
  late final String url;
  late final String name;

  Tag({required this.url, required this.name});

  Tag.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['name'] = name;
    return data;
  }
}

class Image {
  late final String size;
  late final String text;

  Image({required this.size, required this.text});

  Image.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['size'] = size;
    data['#text'] = text;
    return data;
  }
}

class Tracks {
  late final List<Track> track;

  Tracks({required this.track});

  Tracks.fromJson(Map<String, dynamic> json) {
    if (json['track'] != null && json['track'] is! String) {
      track = <Track>[];
      json['track'].forEach((v) {
        track.add(Track.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() =>
      {'track': track.map((v) => v.toJson()).toList()};
}

class Track {
  late final Streamable? streamable;
  late final int duration;
  late final String url;
  late final String name;
  late final Attr? attr;
  late final Artist? artist;

  Track(
      {required this.streamable,
      required this.duration,
      required this.url,
      required this.name,
      required this.attr,
      required this.artist});

  Track.fromJson(Map<String, dynamic> json) {
    streamable = Streamable.fromJson(json['streamable']);
    duration = json['duration'];
    url = json['url'];
    name = json['name'];
    attr = Attr.fromJson(json['@attr']);
    artist = Artist.fromJson(json['artist']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['streamable'] = streamable?.toJson();
    data['duration'] = duration;
    data['url'] = url;
    data['name'] = name;
    data['@attr'] = attr?.toJson();
    data['artist'] = artist?.toJson();
    return data;
  }
}

class Streamable {
  late final String fulltrack;
  late final String text;

  Streamable({required this.fulltrack, required this.text});

  Streamable.fromJson(Map<String, dynamic> json) {
    fulltrack = json['fulltrack'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fulltrack'] = fulltrack;
    data['#text'] = text;
    return data;
  }
}

class Attr {
  late final int rank;

  Attr({required this.rank});

  Attr.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rank'] = rank;
    return data;
  }
}

class Artist {
  late final String url;
  late final String name;
  late final String? mbid;

  Artist({required this.url, required this.name, required this.mbid});

  Artist.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    mbid = json['mbid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['name'] = name;
    data['mbid'] = mbid;
    return data;
  }
}

class Wiki {
  late final String published;
  late final String summary;
  late final String content;

  Wiki({required this.published, required this.summary, required this.content});

  Wiki.fromJson(Map<String, dynamic> json) {
    published = json['published'];
    summary = json['summary'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['published'] = published;
    data['summary'] = summary;
    data['content'] = content;
    return data;
  }
}
