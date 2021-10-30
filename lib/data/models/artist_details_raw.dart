import 'package:collection/collection.dart';

class ArtistDetailsRaw {
  late final Artist? artist;

  ArtistDetailsRaw({required this.artist});

  ArtistDetailsRaw.fromJson(Map<String, dynamic> json) {
    artist = json['artist'] != null ? Artist.fromJson(json['artist']) : null;
  }

  Map<String, dynamic> toJson() => {'artist': artist?.toJson()};
}

class Artist {
  late final String name;
  late final String? mbid;
  late final String url;
  late final List<Image> image;
  late final String streamable;
  late final String ontour;
  late final Stats? stats;
  late final Similar? similar;
  late final Tags? tags;
  late final Bio? bio;

  Artist(
      {required this.name,
      required this.mbid,
      required this.url,
      required this.image,
      required this.streamable,
      required this.ontour,
      required this.stats,
      required this.similar,
      required this.tags,
      required this.bio});

  String? get extralargeImage => image
      .firstWhereOrNull((image) => image.size == 'extralarge')
      ?.text;

  String? get largeImage => image
      .firstWhereOrNull((image) => image.size == 'large')
      ?.text;

  Artist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mbid = json['mbid'];
    url = json['url'];
    if (json['image'] != null) {
      image = <Image>[];
      json['image'].forEach((v) {
        image.add(Image.fromJson(v));
      });
    }
    streamable = json['streamable'];
    ontour = json['ontour'];
    stats = Stats.fromJson(json['stats']);
    similar = Similar.fromJson(json['similar']);
    tags = Tags.fromJson(json['tags']);
    bio = Bio.fromJson(json['bio']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['mbid'] = mbid;
    data['url'] = url;
    data['image'] = image.map((v) => v.toJson()).toList();
    data['streamable'] = streamable;
    data['ontour'] = ontour;
    data['stats'] = stats?.toJson();
    data['similar'] = similar?.toJson();
    data['tags'] = tags?.toJson();
    data['bio'] = bio?.toJson();
    return data;
  }
}

class Image {
  late final String text;
  late final String size;

  Image({required this.text, required this.size});

  Image.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['#text'] = text;
    data['size'] = size;
    return data;
  }
}

class Stats {
  late final String listeners;
  late final String playcount;

  Stats({required this.listeners, required this.playcount});

  Stats.fromJson(Map<String, dynamic> json) {
    listeners = json['listeners'];
    playcount = json['playcount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['listeners'] = listeners;
    data['playcount'] = playcount;
    return data;
  }
}

class Similar {
  late final List<ArtistSimilar> artist;

  Similar({required this.artist});

  Similar.fromJson(Map<String, dynamic> json) {
    if (json['artist'] != null) {
      artist = <ArtistSimilar>[];
      json['artist'].forEach((v) {
        artist.add(ArtistSimilar.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['artist'] = artist.map((v) => v.toJson()).toList();
    return data;
  }
}

class ArtistSimilar {
  late final String name;
  late final String url;
  late final List<Image> image;

  ArtistSimilar({required this.name, required this.url, required this.image});

  ArtistSimilar.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    if (json['image'] != null) {
      image = <Image>[];
      json['image'].forEach((v) {
        image.add(Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['image'] = image.map((v) => v.toJson()).toList();
    return data;
  }
}

class Tags {
  late final List<Tag> tag;

  Tags({required this.tag});

  Tags.fromJson(Map<String, dynamic> json) {
    if (json['tag'] != null) {
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

class Bio {
  late final Links? links;
  late final String published;
  late final String summary;
  late final String content;

  Bio({
    required this.links,
    required this.published,
    required this.summary,
    required this.content,
  });

  Bio.fromJson(Map<String, dynamic> json) {
    links = Links.fromJson(json['links']);
    published = json['published'];
    summary = json['summary'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['links'] = links?.toJson();
    data['published'] = published;
    data['summary'] = summary;
    data['content'] = content;
    return data;
  }
}

class Links {
  late final Link? link;

  Links({required this.link});

  Links.fromJson(Map<String, dynamic> json) {
    link = Link.fromJson(json['link']);
  }

  Map<String, dynamic> toJson() => {'link': link?.toJson()};
}

class Link {
  late final String text;
  late final String rel;
  late final String href;

  Link({required this.text, required this.rel, required this.href});

  Link.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    rel = json['rel'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['#text'] = text;
    data['rel'] = rel;
    data['href'] = href;
    return data;
  }
}
