class TrackDetailsRaw {
  late final Track? track;

  TrackDetailsRaw({required this.track});

  TrackDetailsRaw.fromJson(Map<String, dynamic> json) {
    track = json['track'] != null && json['track'] is! String
        ? Track.fromJson(json['track'])
        : null;
  }

  Map<String, dynamic> toJson() => {'track': track?.toJson()};
}

class Track {
  late final String name;
  late final String url;
  late final String duration;
  late final Streamable? streamable;
  late final String listeners;
  late final String playcount;
  late final Artist? artist;
  late final Album? album;
  late final Toptags? toptags;
  late final Wiki? wiki;

  Track(
      {required this.name,
      required this.url,
      required this.duration,
      required this.streamable,
      required this.listeners,
      required this.playcount,
      required this.artist,
      required this.album,
      required this.toptags,
      required this.wiki});

  Track.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    duration = json['duration'];
    streamable = json['streamable'] != null && json['streamable'] is! String
        ? Streamable.fromJson(json['streamable'])
        : null;
    listeners = json['listeners'];
    playcount = json['playcount'];
    artist = json['artist'] != null && json['artist'] is! String
        ? Artist.fromJson(json['artist'])
        : null;
    album = json['album'] != null && json['album'] is! String
        ? Album.fromJson(json['album'])
        : null;
    toptags = json['toptags'] != null && json['toptags'] is! String
        ? Toptags.fromJson(json['toptags'])
        : null;
    wiki = json['wiki'] != null && json['wiki'] is! String
        ? Wiki.fromJson(json['wiki'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['duration'] = duration;
    if (streamable != null) {
      data['streamable'] = streamable?.toJson();
    }
    data['listeners'] = listeners;
    data['playcount'] = playcount;
    data['artist'] = artist?.toJson();
    data['album'] = album?.toJson();
    data['toptags'] = toptags?.toJson();
    data['wiki'] = wiki?.toJson();
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

class Album {
  late final String artist;
  late final String title;
  late final String url;
  late final List<Image> image;

  Album(
      {required this.artist,
      required this.title,
      required this.url,
      required this.image});

  Album.fromJson(Map<String, dynamic> json) {
    artist = json['artist'];
    title = json['title'];
    url = json['url'];
    if (json['image'] != null && json['image'] is! String) {
      image = <Image>[];
      json['image'].forEach((v) {
        image.add(Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['artist'] = artist;
    data['title'] = title;
    data['url'] = url;
    data['image'] = image.map((v) => v.toJson()).toList();
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

class Toptags {
  late final List<Tag> tag;

  Toptags({required this.tag});

  Toptags.fromJson(Map<String, dynamic> json) {
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
