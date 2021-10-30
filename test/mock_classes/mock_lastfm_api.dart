import 'package:tonlistarleit/common/enums.dart';
import 'package:tonlistarleit/data/data_providers/lastfm_api.dart';

class MockLastfmApi extends LastfmApi {
  @override
  Future<Map<String, dynamic>> getMusicEntities(
      _, EntityType entityType) async {
    switch (entityType) {
      case EntityType.album:
        return mockAlbumsResponse;
      case EntityType.track:
        return mockTracksResponse;
      case EntityType.artist:
        return mockArtistsResponse;
    }
  }

  @override
  Future<Map<String, dynamic>> getMusicEntityDetails(
      EntityType entityType, _) async {
    switch (entityType) {
      case EntityType.album:
        return mockAlbumResponse;
      case EntityType.track:
        return mockTrackResponse;
      case EntityType.artist:
        return mockArtistResponse;
    }
  }
}

const mockAlbumsResponse = {
  "results": {
    "opensearch:Query": {
      "#text": "",
      "role": "request",
      "searchTerms": "some",
      "startPage": "1"
    },
    "opensearch:totalResults": "683833",
    "opensearch:startIndex": "0",
    "opensearch:itemsPerPage": "50",
    "albummatches": {
      "album": [
        {
          "name": "some rap songs",
          "artist": "Earl Sweatshirt",
          "url": "https://www.last.fm/music/Earl+Sweatshirt/some+rap+songs",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/b7b9b1e9d8007ddaeaa9ee8a8e45a4c3.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/b7b9b1e9d8007ddaeaa9ee8a8e45a4c3.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/b7b9b1e9d8007ddaeaa9ee8a8e45a4c3.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/b7b9b1e9d8007ddaeaa9ee8a8e45a4c3.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Some Nights",
          "artist": "fun.",
          "url": "https://www.last.fm/music/fun./Some+Nights",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/23c8bf46a0794deeb989fb2edd8b1e76.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/23c8bf46a0794deeb989fb2edd8b1e76.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/23c8bf46a0794deeb989fb2edd8b1e76.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/23c8bf46a0794deeb989fb2edd8b1e76.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "dc64e2f5-6ca2-429a-8956-c104cd62c925"
        },
      ]
    },
    "@attr": {"for": "some"}
  }
};

const mockTracksResponse = {
  "results": {
    "opensearch:Query": {"#text": "", "role": "request", "startPage": "1"},
    "opensearch:totalResults": "3147643",
    "opensearch:startIndex": "0",
    "opensearch:itemsPerPage": "30",
    "trackmatches": {
      "track": [
        {
          "name": "Somebody That I Used To Know",
          "artist": "Gotye",
          "url":
              "https://www.last.fm/music/Gotye/_/Somebody+That+I+Used+To+Know",
          "streamable": "FIXME",
          "listeners": "1361186",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            }
          ],
          "mbid": "5b6ad1ba-9e08-4570-bcef-e3343519070a"
        },
        {
          "name": "Somebody Told Me",
          "artist": "The Killers",
          "url": "https://www.last.fm/music/The+Killers/_/Somebody+Told+Me",
          "streamable": "FIXME",
          "listeners": "1844097",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            }
          ],
          "mbid": "309eb50b-637b-476c-9f23-a589a90432fe"
        },
      ]
    },
    "@attr": {}
  }
};

const mockArtistsResponse = {
  "results": {
    "opensearch:Query": {
      "#text": "",
      "role": "request",
      "searchTerms": "some",
      "startPage": "1"
    },
    "opensearch:totalResults": "64264",
    "opensearch:startIndex": "0",
    "opensearch:itemsPerPage": "30",
    "artistmatches": {
      "artist": [
        {
          "name": "Something Corporate",
          "listeners": "703643",
          "mbid": "8dacf242-9bf7-44f5-b2eb-18305b904551",
          "url": "https://www.last.fm/music/Something+Corporate",
          "streamable": "0",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            }
          ]
        },
        {
          "name": "Someone Still Loves You Boris Yeltsin",
          "listeners": "418996",
          "mbid": "c76b85c5-56eb-4b05-9d48-da395e56796a",
          "url":
              "https://www.last.fm/music/Someone+Still+Loves+You+Boris+Yeltsin",
          "streamable": "0",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            }
          ]
        },
      ]
    },
    "@attr": {"for": "some"}
  }
};

const mockAlbumResponse = {
  "album": {
    "artist": "La Dispute",
    "mbid": "34abc0cb-e3c8-42c3-a53d-c127dda0ad0b",
    "tags": {
      "tag": [
        {
          "url": "https:\/\/www.last.fm\/tag\/post-hardcore",
          "name": "post-hardcore"
        },
        {"url": "https:\/\/www.last.fm\/tag\/screamo", "name": "screamo"},
        {
          "url": "https:\/\/www.last.fm\/tag\/experimental",
          "name": "experimental"
        },
        {"url": "https:\/\/www.last.fm\/tag\/hardcore", "name": "hardcore"},
        {
          "url": "https:\/\/www.last.fm\/tag\/post+hardcore",
          "name": "post hardcore"
        }
      ]
    },
    "playcount": "8999322",
    "image": [
      {
        "size": "small",
        "#text":
            "https:\/\/lastfm.freetls.fastly.net\/i\/u\/34s\/e25ad3a369e547d989100a66e378e669.png"
      },
      {
        "size": "medium",
        "#text":
            "https:\/\/lastfm.freetls.fastly.net\/i\/u\/64s\/e25ad3a369e547d989100a66e378e669.png"
      },
      {
        "size": "large",
        "#text":
            "https:\/\/lastfm.freetls.fastly.net\/i\/u\/174s\/e25ad3a369e547d989100a66e378e669.png"
      },
      {
        "size": "extralarge",
        "#text":
            "https:\/\/lastfm.freetls.fastly.net\/i\/u\/300x300\/e25ad3a369e547d989100a66e378e669.png"
      },
      {
        "size": "mega",
        "#text":
            "https:\/\/lastfm.freetls.fastly.net\/i\/u\/300x300\/e25ad3a369e547d989100a66e378e669.png"
      },
      {
        "size": "",
        "#text":
            "https:\/\/lastfm.freetls.fastly.net\/i\/u\/300x300\/e25ad3a369e547d989100a66e378e669.png"
      }
    ],
    "tracks": {
      "track": [
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 95,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Such+Small+Hands",
          "name": "Such Small Hands",
          "@attr": {"rank": 1},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 241,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Said+the+King+to+the+River",
          "name": "Said the King to the River",
          "@attr": {"rank": 2},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 299,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/New+Storms+for+Older+Lovers",
          "name": "New Storms for Older Lovers",
          "@attr": {"rank": 3},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 175,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Damaged+Goods",
          "name": "Damaged Goods",
          "@attr": {"rank": 4},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 165,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Fall+Down,+Never+Get+Back+Up+Again",
          "name": "Fall Down, Never Get Back Up Again",
          "@attr": {"rank": 5},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 275,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Bury+Your+Flame",
          "name": "Bury Your Flame",
          "@attr": {"rank": 6},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 300,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Last+Blues+for+Bloody+Knuckles",
          "name": "Last Blues for Bloody Knuckles",
          "@attr": {"rank": 7},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 166,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/The+Castle+Builders",
          "name": "The Castle Builders",
          "@attr": {"rank": 8},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 260,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Andria",
          "name": "Andria",
          "@attr": {"rank": 9},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 96,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Then+Again,+Maybe+You+Were+Right",
          "name": "Then Again, Maybe You Were Right",
          "@attr": {"rank": 10},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 226,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Sad+Prayers+for+Guilty+Bodies",
          "name": "Sad Prayers for Guilty Bodies",
          "@attr": {"rank": 11},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 722,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/The+Last+Lost+Continent",
          "name": "The Last Lost Continent",
          "@attr": {"rank": 12},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        },
        {
          "streamable": {"fulltrack": "0", "#text": "0"},
          "duration": 70,
          "url":
              "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\/Nobody,+Not+Even+the+Rain",
          "name": "Nobody, Not Even the Rain",
          "@attr": {"rank": 13},
          "artist": {
            "url": "https:\/\/www.last.fm\/music\/La+Dispute",
            "name": "La Dispute",
            "mbid": "2ec89bcc-5bf9-4d2a-ac5e-44b7496d115a"
          }
        }
      ]
    },
    "url":
        "https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair",
    "name": "Somewhere at the Bottom of the River Between Vega and Altair",
    "listeners": "158819",
    "wiki": {
      "published": "01 Jan 2014, 17:13",
      "summary":
          "Somewhere at the Bottom of the River Between Vega and Altair is the debut album released by La Dispute. Supported by three release shows, it was released on November 11, 2008, simultaneously along with Here, Hear II. through No Sleep Records on both CD and vinyl. The album's title is derived from an Asian folktale, which the album's lyrics loosely follow. The release received positive reviews from notable critics and maintains a legacy in the post-hardcore scene. <a href=\"https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\">Read more on Last.fm<\/a>.",
      "content":
          "Somewhere at the Bottom of the River Between Vega and Altair is the debut album released by La Dispute. Supported by three release shows, it was released on November 11, 2008, simultaneously along with Here, Hear II. through No Sleep Records on both CD and vinyl. The album's title is derived from an Asian folktale, which the album's lyrics loosely follow. The release received positive reviews from notable critics and maintains a legacy in the post-hardcore scene. <a href=\"https:\/\/www.last.fm\/music\/La+Dispute\/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair\">Read more on Last.fm<\/a>. User-contributed text is available under the Creative Commons By-SA License; additional terms may apply."
    }
  }
};

const mockArtistResponse = {
  "artist": {
    "name": "Deep Blue Something",
    "mbid": "ae3f6a8a-c465-4707-8667-8ce0172bc417",
    "url": "https://www.last.fm/music/Deep+Blue+Something",
    "image": [
      {
        "#text":
            "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "small"
      },
      {
        "#text":
            "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "medium"
      },
      {
        "#text":
            "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "large"
      },
      {
        "#text":
            "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "extralarge"
      },
      {
        "#text":
            "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": "mega"
      },
      {
        "#text":
            "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
        "size": ""
      }
    ],
    "streamable": "0",
    "ontour": "0",
    "stats": {"listeners": "540185", "playcount": "2963025"},
    "similar": {
      "artist": [
        {
          "name": "Spin Doctors",
          "url": "https://www.last.fm/music/Spin+Doctors",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Tal Bachman",
          "url": "https://www.last.fm/music/Tal+Bachman",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Hootie & The Blowfish",
          "url": "https://www.last.fm/music/Hootie+&+The+Blowfish",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Better Than Ezra",
          "url": "https://www.last.fm/music/Better+Than+Ezra",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        },
        {
          "name": "Gin Blossoms",
          "url": "https://www.last.fm/music/Gin+Blossoms",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "extralarge"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": "mega"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
              "size": ""
            }
          ]
        }
      ]
    },
    "tags": {
      "tag": [
        {"name": "rock", "url": "https://www.last.fm/tag/rock"},
        {"name": "pop", "url": "https://www.last.fm/tag/pop"},
        {"name": "90s", "url": "https://www.last.fm/tag/90s"},
        {
          "name": "alternative rock",
          "url": "https://www.last.fm/tag/alternative+rock"
        },
        {"name": "alternative", "url": "https://www.last.fm/tag/alternative"}
      ]
    },
    "bio": {
      "links": {
        "link": {
          "#text": "",
          "rel": "original",
          "href": "https://last.fm/music/Deep+Blue+Something/+wiki"
        }
      },
      "published": "13 Apr 2006, 19:06",
      "summary":
          "Deep Blue Something is an American rock band...",
      "content":
          "Deep Blue Something is an American rock band best known for its hit single, Breakfast at Tiffany's. The group was founded in 1993 in Denton, Texas by students Todd and Toby Pipes, Kirk Tatum, and John Kirtland.\n\nIn 1996, Breakfast at Tiffany's, which referenced the classic Audrey Hepburn film of the same name, reached the top five in the U.S. and number one in the United Kingdom.\n\nThere was conjecture that the band took so much time off between Home and Deep Blue Something in order to fight US centered copyright issues related to their initial album, 11th Song, which they believed to be of lower quality than their name deserved. The 7 year hiatus between albums is believed to be partially responsible for their failure to succeed in the US with their self-titled release.\n\nThe band returned in 2015 to release new music for the first time since 2001. This EP was titled Locust House.\n\nJohn Kirtland is now running a successful independent record label called Kirtland Records. Based out of Dallas, Texas and Los Angeles, California, Kirtland's shrewd business dealings led to his ownership of the back-catalog of superstar band, Bush and royalty rights on the sales of certain albums by No Doubt. After selling off his rights to the No Doubt material, Bush remains on the Kirtland label along with successful indies like Bril and the Burden Brothers. <a href=\"https://www.last.fm/music/Deep+Blue+Something\">Read more on Last.fm</a>. User-contributed text is available under the Creative Commons By-SA License; additional terms may apply."
    }
  }
};

const mockTrackResponse = {
  "track": {
    "name": "Call Out My Name",
    "url": "https://www.last.fm/music/The+Weeknd/_/Call+Out+My+Name",
    "duration": "238000",
    "streamable": {"#text": "0", "fulltrack": "0"},
    "listeners": "426288",
    "playcount": "4243039",
    "artist": {
      "name": "The Weeknd",
      "mbid": "c8b03190-306c-4120-bb0b-6f2ebfc06ea9",
      "url": "https://www.last.fm/music/The+Weeknd"
    },
    "album": {
      "artist": "The Weeknd",
      "title": "The Weeknd In Japan",
      "url": "https://www.last.fm/music/The+Weeknd/The+Weeknd+In+Japan",
      "image": [
        {
          "#text":
              "https://lastfm.freetls.fastly.net/i/u/34s/4aba41149510711e2d32f3da366f7b2a.png",
          "size": "small"
        },
        {
          "#text":
              "https://lastfm.freetls.fastly.net/i/u/64s/4aba41149510711e2d32f3da366f7b2a.png",
          "size": "medium"
        },
        {
          "#text":
              "https://lastfm.freetls.fastly.net/i/u/174s/4aba41149510711e2d32f3da366f7b2a.png",
          "size": "large"
        },
        {
          "#text":
              "https://lastfm.freetls.fastly.net/i/u/300x300/4aba41149510711e2d32f3da366f7b2a.png",
          "size": "extralarge"
        }
      ]
    },
    "toptags": {
      "tag": [
        {"name": "rnb", "url": "https://www.last.fm/tag/rnb"},
        {"name": "soul", "url": "https://www.last.fm/tag/soul"},
        {"name": "Canadian", "url": "https://www.last.fm/tag/Canadian"},
        {"name": "r&b", "url": "https://www.last.fm/tag/r&b"},
        {"name": "2018", "url": "https://www.last.fm/tag/2018"}
      ]
    },
    "wiki": {
      "published": "28 Nov 2019, 06:01",
      "summary":
          "Sampling his Oscar-nominated âEarned Itâ over a slow piano-driven beat from producer Frank Dukes (who collaborated with The Weeknd on his previous effort Starboy), Abel details his struggles to let go of a past relationship.\n\nAbel explains that, although he is aware that his last lover didnât put as much effort into the relationship as he did (âwasted my timeâ), he still wishes deep down that she would need him as much as he still needs her. <a href=\"http://www.last.fm/music/The+Weeknd/_/Call+Out+My+Name\">Read more on Last.fm</a>.",
      "content":
          "Sampling his Oscar-nominated âEarned Itâ over a slow piano-driven beat from producer Frank Dukes (who collaborated with The Weeknd on his previous effort Starboy), Abel details his struggles to let go of a past relationship.\n\nAbel explains that, although he is aware that his last lover didnât put as much effort into the relationship as he did (âwasted my timeâ), he still wishes deep down that she would need him as much as he still needs her. <a href=\"http://www.last.fm/music/The+Weeknd/_/Call+Out+My+Name\">Read more on Last.fm</a>. User-contributed text is available under the Creative Commons By-SA License; additional terms may apply."
    }
  }
};
