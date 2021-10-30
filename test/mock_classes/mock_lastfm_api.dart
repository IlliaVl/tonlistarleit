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
        {
          "name": "Sometimes",
          "artist": "City and Colour",
          "url": "https://www.last.fm/music/City+and+Colour/Sometimes",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/a0086377663e4be6bbccf9e34a06ff76.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/a0086377663e4be6bbccf9e34a06ff76.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/a0086377663e4be6bbccf9e34a06ff76.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/a0086377663e4be6bbccf9e34a06ff76.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "bc7e4abe-5672-40d4-bb39-a72ba0293476"
        },
        {
          "name":
              "Somewhere at the Bottom of the River Between Vega and Altair",
          "artist": "La Dispute",
          "url":
              "https://www.last.fm/music/La+Dispute/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/e25ad3a369e547d989100a66e378e669.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/e25ad3a369e547d989100a66e378e669.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/e25ad3a369e547d989100a66e378e669.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/e25ad3a369e547d989100a66e378e669.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "a4e48e1b-510f-4671-b51c-ae66fa6adfa7"
        },
        {
          "name": "Start Something",
          "artist": "Lostprophets",
          "url": "https://www.last.fm/music/Lostprophets/Start+Something",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/8883b6de0c5f47b5b67c850352dc8a64.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/8883b6de0c5f47b5b67c850352dc8a64.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/8883b6de0c5f47b5b67c850352dc8a64.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/8883b6de0c5f47b5b67c850352dc8a64.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "5d52f1e3-4e3a-484e-97b2-767bdd42df18"
        },
        {
          "name": "Sometimes I Sit and Think, and Sometimes I Just Sit",
          "artist": "Courtney Barnett",
          "url":
              "https://www.last.fm/music/Courtney+Barnett/Sometimes+I+Sit+and+Think,+and+Sometimes+I+Just+Sit",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/3d7b04cb4ee247c5c7cbc1fcce72b281.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/3d7b04cb4ee247c5c7cbc1fcce72b281.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/3d7b04cb4ee247c5c7cbc1fcce72b281.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/3d7b04cb4ee247c5c7cbc1fcce72b281.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Some People Have Real Problems",
          "artist": "Sia",
          "url": "https://www.last.fm/music/Sia/Some+People+Have+Real+Problems",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/df5c2ce2f60e2a4d633b545c717126dc.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/df5c2ce2f60e2a4d633b545c717126dc.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/df5c2ce2f60e2a4d633b545c717126dc.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/df5c2ce2f60e2a4d633b545c717126dc.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "b5c33b49-39d8-4112-a195-3bf114decafb"
        },
        {
          "name": "Somewhere In Time",
          "artist": "Iron Maiden",
          "url": "https://www.last.fm/music/Iron+Maiden/Somewhere+In+Time",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/72a450bdd812b23ef35699065053c15a.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/72a450bdd812b23ef35699065053c15a.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/72a450bdd812b23ef35699065053c15a.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/72a450bdd812b23ef35699065053c15a.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "105b12df-6029-4c0c-b6f6-2db995c0834e"
        },
        {
          "name": "Some Girls",
          "artist": "The Rolling Stones",
          "url": "https://www.last.fm/music/The+Rolling+Stones/Some+Girls",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2f1bd3100c434943b8c636f2ba16c99e.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2f1bd3100c434943b8c636f2ba16c99e.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2f1bd3100c434943b8c636f2ba16c99e.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2f1bd3100c434943b8c636f2ba16c99e.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "635239b4-986a-4cb7-90ba-bf213d5c9f78"
        },
        {
          "name": "Some Hearts",
          "artist": "Carrie Underwood",
          "url": "https://www.last.fm/music/Carrie+Underwood/Some+Hearts",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/7caaf35b42fe4b458dedc3dec6e58a3b.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/7caaf35b42fe4b458dedc3dec6e58a3b.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/7caaf35b42fe4b458dedc3dec6e58a3b.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/7caaf35b42fe4b458dedc3dec6e58a3b.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "a33b9822-9f09-4e19-9d6e-e05af85c727b"
        },
        {
          "name": "Somersault",
          "artist": "Beach Fossils",
          "url": "https://www.last.fm/music/Beach+Fossils/Somersault",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/9a25ef42d1d0c1649c42e4de32c0f366.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/9a25ef42d1d0c1649c42e4de32c0f366.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/9a25ef42d1d0c1649c42e4de32c0f366.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/9a25ef42d1d0c1649c42e4de32c0f366.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Sometimes I Might Be Introvert",
          "artist": "Little Simz",
          "url":
              "https://www.last.fm/music/Little+Simz/Sometimes+I+Might+Be+Introvert",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/592ce13b8d7cfee26e13692b3c6985e8.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/592ce13b8d7cfee26e13692b3c6985e8.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/592ce13b8d7cfee26e13692b3c6985e8.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/592ce13b8d7cfee26e13692b3c6985e8.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Something to Tell You",
          "artist": "HAIM",
          "url": "https://www.last.fm/music/HAIM/Something+to+Tell+You",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/acbbc3e34276616b08548ffcd7f1dc8a.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/acbbc3e34276616b08548ffcd7f1dc8a.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/acbbc3e34276616b08548ffcd7f1dc8a.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/acbbc3e34276616b08548ffcd7f1dc8a.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Someday Came Suddenly",
          "artist": "Attack Attack!",
          "url":
              "https://www.last.fm/music/Attack+Attack%21/Someday+Came+Suddenly",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/5972074deffd8e61eaa4f4e33ce425f8.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/5972074deffd8e61eaa4f4e33ce425f8.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/5972074deffd8e61eaa4f4e33ce425f8.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/5972074deffd8e61eaa4f4e33ce425f8.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "21e82ff6-5b8d-4638-b78c-825b9a4971d4"
        },
        {
          "name": "Something About Airplanes",
          "artist": "Death Cab for Cutie",
          "url":
              "https://www.last.fm/music/Death+Cab+for+Cutie/Something+About+Airplanes",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/6aa534109a034dc8b44feb4f571f4cd5.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/6aa534109a034dc8b44feb4f571f4cd5.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/6aa534109a034dc8b44feb4f571f4cd5.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/6aa534109a034dc8b44feb4f571f4cd5.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "77c9dc8c-dcc4-4db9-ad50-b5def37d58b5"
        },
        {
          "name": "Something",
          "artist": "Chairlift",
          "url": "https://www.last.fm/music/Chairlift/Something",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/422d44b63fdb853e6fa2a4719afc957b.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/422d44b63fdb853e6fa2a4719afc957b.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/422d44b63fdb853e6fa2a4719afc957b.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/422d44b63fdb853e6fa2a4719afc957b.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "04d82203-ad2c-42b8-b163-a340371f495d"
        },
        {
          "name": "Something to Write Home About",
          "artist": "The Get Up Kids",
          "url":
              "https://www.last.fm/music/The+Get+Up+Kids/Something+to+Write+Home+About",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/0da4cabedef24c8bcc8a648d45ced59a.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/0da4cabedef24c8bcc8a648d45ced59a.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/0da4cabedef24c8bcc8a648d45ced59a.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/0da4cabedef24c8bcc8a648d45ced59a.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "011310b5-57b5-416e-8331-9bc134f6fbc8"
        },
        {
          "name": "Somewhere In The Between",
          "artist": "Streetlight Manifesto",
          "url":
              "https://www.last.fm/music/Streetlight+Manifesto/Somewhere+In+The+Between",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/3f21f4b58f844afab3bbccc450a4e0bf.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/3f21f4b58f844afab3bbccc450a4e0bf.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/3f21f4b58f844afab3bbccc450a4e0bf.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/3f21f4b58f844afab3bbccc450a4e0bf.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "f45d8414-31e4-4289-ba5b-12f2ea7bf40a"
        },
        {
          "name": "Some Mad Hope",
          "artist": "Matt Nathanson",
          "url": "https://www.last.fm/music/Matt+Nathanson/Some+Mad+Hope",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/e7749d78cb4143e7b9e926074bc206af.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/e7749d78cb4143e7b9e926074bc206af.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/e7749d78cb4143e7b9e926074bc206af.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/e7749d78cb4143e7b9e926074bc206af.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "29e89c60-faff-4d58-8340-6e5d10b6b421"
        },
        {
          "name": "Yourself or Someone Like You",
          "artist": "Matchbox Twenty",
          "url":
              "https://www.last.fm/music/Matchbox+Twenty/Yourself+or+Someone+Like+You",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/b11e3cbe95744ba8bc012be1e607c3ac.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/b11e3cbe95744ba8bc012be1e607c3ac.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/b11e3cbe95744ba8bc012be1e607c3ac.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/b11e3cbe95744ba8bc012be1e607c3ac.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "6dde1139-37cf-480b-a5d6-3021bad57898"
        },
        {
          "name": "Feel Something",
          "artist": "Jaymes Young",
          "url": "https://www.last.fm/music/Jaymes+Young/Feel+Something",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/7026efe7971fba52f75e8367a261c835.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/7026efe7971fba52f75e8367a261c835.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/7026efe7971fba52f75e8367a261c835.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/7026efe7971fba52f75e8367a261c835.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Feel Something",
          "artist": "Movements",
          "url": "https://www.last.fm/music/Movements/Feel+Something",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/5d302c20bb191e7c5bf537748e1d091b.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/5d302c20bb191e7c5bf537748e1d091b.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/5d302c20bb191e7c5bf537748e1d091b.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/5d302c20bb191e7c5bf537748e1d091b.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Somewhere Far Beyond",
          "artist": "Blind Guardian",
          "url":
              "https://www.last.fm/music/Blind+Guardian/Somewhere+Far+Beyond",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/83d1a299ccdfa83c7b27e303ba611fb0.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/83d1a299ccdfa83c7b27e303ba611fb0.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/83d1a299ccdfa83c7b27e303ba611fb0.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/83d1a299ccdfa83c7b27e303ba611fb0.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "99ea0a72-1d34-4172-95d9-36c8f305ab12"
        },
        {
          "name": "Some Great Reward",
          "artist": "Depeche Mode",
          "url": "https://www.last.fm/music/Depeche+Mode/Some+Great+Reward",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/b31e0e1c58ac9c1e7b1ae8ecb450a6f9.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/b31e0e1c58ac9c1e7b1ae8ecb450a6f9.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/b31e0e1c58ac9c1e7b1ae8ecb450a6f9.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/b31e0e1c58ac9c1e7b1ae8ecb450a6f9.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "6b5b399d-14dc-3abb-a117-bdbc023faf82"
        },
        {
          "name": "Something Wild",
          "artist": "Children of Bodom",
          "url": "https://www.last.fm/music/Children+of+Bodom/Something+Wild",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/21c854483ed8564037468a580dff0511.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/21c854483ed8564037468a580dff0511.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/21c854483ed8564037468a580dff0511.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/21c854483ed8564037468a580dff0511.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "9ff322ef-5dac-4129-b67a-b101c30efaca"
        },
        {
          "name": "Some Kind of Trouble",
          "artist": "James Blunt",
          "url": "https://www.last.fm/music/James+Blunt/Some+Kind+of+Trouble",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/cf4f18047cd54befcb154b893bc5a327.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/cf4f18047cd54befcb154b893bc5a327.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/cf4f18047cd54befcb154b893bc5a327.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/cf4f18047cd54befcb154b893bc5a327.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "9b1c0003-7de6-4620-ab57-cf6cd03bb269"
        },
        {
          "name": "Something Wicked This Way Comes",
          "artist": "Iced Earth",
          "url":
              "https://www.last.fm/music/Iced+Earth/Something+Wicked+This+Way+Comes",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/49844a7d94d81bb61cd075042d458f51.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/49844a7d94d81bb61cd075042d458f51.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/49844a7d94d81bb61cd075042d458f51.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/49844a7d94d81bb61cd075042d458f51.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "a5c27001-6dba-31a8-9f71-d50d89b0348b"
        },
        {
          "name": "Sometimes I Wish We Were an Eagle",
          "artist": "Bill Callahan",
          "url":
              "https://www.last.fm/music/Bill+Callahan/Sometimes+I+Wish+We+Were+an+Eagle",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/258aca0f00c342ce97469832f4310c35.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/258aca0f00c342ce97469832f4310c35.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/258aca0f00c342ce97469832f4310c35.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/258aca0f00c342ce97469832f4310c35.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "a89edc18-21f9-4970-b943-454799adefc0"
        },
        {
          "name": "Some",
          "artist": "Steve Lacy",
          "url": "https://www.last.fm/music/Steve+Lacy/Some",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/6faa967d52c9dbc70b578ef50bb2cd44.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/6faa967d52c9dbc70b578ef50bb2cd44.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/6faa967d52c9dbc70b578ef50bb2cd44.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/6faa967d52c9dbc70b578ef50bb2cd44.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Some Cities",
          "artist": "Doves",
          "url": "https://www.last.fm/music/Doves/Some+Cities",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/f3d49d1a84734948913c9abf590faa28.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/f3d49d1a84734948913c9abf590faa28.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/f3d49d1a84734948913c9abf590faa28.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/f3d49d1a84734948913c9abf590faa28.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "b0ba7c08-6c6b-37f3-b9e6-4cbcd4669e5e"
        },
        {
          "name": "Some Kind of Cadwallader",
          "artist": "Algernon Cadwallader",
          "url":
              "https://www.last.fm/music/Algernon+Cadwallader/Some+Kind+of+Cadwallader",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/4252a4a1302e1970dc390f63c37722bd.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/4252a4a1302e1970dc390f63c37722bd.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/4252a4a1302e1970dc390f63c37722bd.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/4252a4a1302e1970dc390f63c37722bd.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "c1523f81-cfa3-4a5d-9fb2-e89cccb35c4b"
        },
        {
          "name": "Something to Remember",
          "artist": "Madonna",
          "url": "https://www.last.fm/music/Madonna/Something+to+Remember",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/200c18a27798761a8f371f79ab1c1309.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/200c18a27798761a8f371f79ab1c1309.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/200c18a27798761a8f371f79ab1c1309.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/200c18a27798761a8f371f79ab1c1309.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "6377062c-5fb0-4c8a-b7c6-e4ad84019f96"
        },
        {
          "name": "Somewhere City",
          "artist": "Origami Angel",
          "url": "https://www.last.fm/music/Origami+Angel/Somewhere+City",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/19d15ee1865b48d02c39488323a0f8f6.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/19d15ee1865b48d02c39488323a0f8f6.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/19d15ee1865b48d02c39488323a0f8f6.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/19d15ee1865b48d02c39488323a0f8f6.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Something Like Human",
          "artist": "Fuel",
          "url": "https://www.last.fm/music/Fuel/Something+Like+Human",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/d460ba24ac67af9ddf8bee3448db1c51.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/d460ba24ac67af9ddf8bee3448db1c51.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/d460ba24ac67af9ddf8bee3448db1c51.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/d460ba24ac67af9ddf8bee3448db1c51.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "b49048c3-e4d2-412b-bd9e-722fdee388b9"
        },
        {
          "name": "Something Just Like This",
          "artist": "The Chainsmokers",
          "url":
              "https://www.last.fm/music/The+Chainsmokers/Something+Just+Like+This",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2d3bf251e1bfc97b633a59ac5930a49b.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2d3bf251e1bfc97b633a59ac5930a49b.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2d3bf251e1bfc97b633a59ac5930a49b.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2d3bf251e1bfc97b633a59ac5930a49b.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Some Devil",
          "artist": "Dave Matthews",
          "url": "https://www.last.fm/music/Dave+Matthews/Some+Devil",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/47fe95753b6c452bc527413d6921ca9c.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/47fe95753b6c452bc527413d6921ca9c.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/47fe95753b6c452bc527413d6921ca9c.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/47fe95753b6c452bc527413d6921ca9c.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "a8c52e79-59a2-4225-b8b5-28c01442b141"
        },
        {
          "name": "Sometimes the Blues Is Just a Passing Bird",
          "artist": "The Tallest Man on Earth",
          "url":
              "https://www.last.fm/music/The+Tallest+Man+on+Earth/Sometimes+the+Blues+Is+Just+a+Passing+Bird",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/0ccba49f9bd947cbb258dfc153806416.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/0ccba49f9bd947cbb258dfc153806416.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/0ccba49f9bd947cbb258dfc153806416.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/0ccba49f9bd947cbb258dfc153806416.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Somewhere Along The Highway",
          "artist": "Cult of Luna",
          "url":
              "https://www.last.fm/music/Cult+of+Luna/Somewhere+Along+The+Highway",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/2251aaabc86bf29ae2d59e58937cb812.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/2251aaabc86bf29ae2d59e58937cb812.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/2251aaabc86bf29ae2d59e58937cb812.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/2251aaabc86bf29ae2d59e58937cb812.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "1fde8540-59cf-4c8d-8429-eb076d03fb05"
        },
        {
          "name": "Some Loud Thunder",
          "artist": "Clap Your Hands Say Yeah",
          "url":
              "https://www.last.fm/music/Clap+Your+Hands+Say+Yeah/Some+Loud+Thunder",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/c170f9623ac14819a3640603ca736b5b.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/c170f9623ac14819a3640603ca736b5b.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/c170f9623ac14819a3640603ca736b5b.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/c170f9623ac14819a3640603ca736b5b.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "1c62a91a-4fa0-4e40-afbf-39f83f230e42"
        },
        {
          "name": "Someday Somewhere",
          "artist": "Mura Masa",
          "url": "https://www.last.fm/music/Mura+Masa/Someday+Somewhere",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/c1cc0ff6b9002e80d692f0d522a033d1.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/c1cc0ff6b9002e80d692f0d522a033d1.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/c1cc0ff6b9002e80d692f0d522a033d1.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/c1cc0ff6b9002e80d692f0d522a033d1.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Something For Nothing",
          "artist": "Chunk! No, Captain Chunk!",
          "url":
              "https://www.last.fm/music/Chunk%21+No,+Captain+Chunk%21/Something+For+Nothing",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/6d454adb7952401e895cc80c0fcc1111.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/6d454adb7952401e895cc80c0fcc1111.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/6d454adb7952401e895cc80c0fcc1111.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/6d454adb7952401e895cc80c0fcc1111.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "04b8815d-1586-402f-ad65-f8f3054a7c43"
        },
        {
          "name":
              "Somewhere at the Bottom of the River Between Vega and Altair (10th Anniversary)",
          "artist": "La Dispute",
          "url":
              "https://www.last.fm/music/La+Dispute/Somewhere+at+the+Bottom+of+the+River+Between+Vega+and+Altair+(10th+Anniversary)",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/ccbf57075fece0ea1bcf678bea2da8d6.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/ccbf57075fece0ea1bcf678bea2da8d6.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/ccbf57075fece0ea1bcf678bea2da8d6.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/ccbf57075fece0ea1bcf678bea2da8d6.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Something Else By The Kinks",
          "artist": "The Kinks",
          "url":
              "https://www.last.fm/music/The+Kinks/Something+Else+By+The+Kinks",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/372350531b254be2ae150e01e4e69339.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/372350531b254be2ae150e01e4e69339.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/372350531b254be2ae150e01e4e69339.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/372350531b254be2ae150e01e4e69339.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "2cf4d2b9-5a16-3fd5-a127-4ca81cafef47"
        },
        {
          "name": "Gimme Some",
          "artist": "Peter Bjorn and John",
          "url": "https://www.last.fm/music/Peter+Bjorn+and+John/Gimme+Some",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/8fd52b1bda41cb1b77de04e5e06ddeb0.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/8fd52b1bda41cb1b77de04e5e06ddeb0.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/8fd52b1bda41cb1b77de04e5e06ddeb0.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/8fd52b1bda41cb1b77de04e5e06ddeb0.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "1214adba-c720-3578-8809-e037338743b9"
        },
        {
          "name": "Someone in Control",
          "artist": "Trapt",
          "url": "https://www.last.fm/music/Trapt/Someone+in+Control",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/21e78bfb4b54acd6283d7ac6cfbb90c3.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/21e78bfb4b54acd6283d7ac6cfbb90c3.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/21e78bfb4b54acd6283d7ac6cfbb90c3.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/21e78bfb4b54acd6283d7ac6cfbb90c3.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "b83fcd61-473a-41f3-9ef6-19405d7985ba"
        },
        {
          "name": "feel something",
          "artist": "Bea Miller",
          "url": "https://www.last.fm/music/Bea+Miller/feel+something",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/f08667db1e664809652e8bae7c777891.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/f08667db1e664809652e8bae7c777891.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/f08667db1e664809652e8bae7c777891.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/f08667db1e664809652e8bae7c777891.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        },
        {
          "name": "Something Wild",
          "artist": "Radiator Hospital",
          "url": "https://www.last.fm/music/Radiator+Hospital/Something+Wild",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/646a66dd39dd4a02ba86a3d43d3d499d.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/646a66dd39dd4a02ba86a3d43d3d499d.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/646a66dd39dd4a02ba86a3d43d3d499d.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/646a66dd39dd4a02ba86a3d43d3d499d.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "3acc9f03-5027-4543-83fe-3c70601c1df0"
        },
        {
          "name": "Something to Die For",
          "artist": "The Sounds",
          "url": "https://www.last.fm/music/The+Sounds/Something+to+Die+For",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/21349704d8ee4e08a54cbc375890dae2.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/21349704d8ee4e08a54cbc375890dae2.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/21349704d8ee4e08a54cbc375890dae2.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/21349704d8ee4e08a54cbc375890dae2.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "def1d54c-90d1-42cd-8c9d-4b14ca10fa3f"
        },
        {
          "name": "Somebody Outside",
          "artist": "Anna Ternheim",
          "url": "https://www.last.fm/music/Anna+Ternheim/Somebody+Outside",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/f6c429cdc757461299e90943e2f0fe29.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/f6c429cdc757461299e90943e2f0fe29.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/f6c429cdc757461299e90943e2f0fe29.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/f6c429cdc757461299e90943e2f0fe29.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": "70ad3459-21f1-3f00-bb43-41a44fbbe564"
        },
        {
          "name": "Some Nights (Spotify Exclusive)",
          "artist": "fun.",
          "url":
              "https://www.last.fm/music/fun./Some+Nights+(Spotify+Exclusive)",
          "image": [
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/34s/98235d2763524a66ca2c8b64fcff02b3.png",
              "size": "small"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/64s/98235d2763524a66ca2c8b64fcff02b3.png",
              "size": "medium"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/174s/98235d2763524a66ca2c8b64fcff02b3.png",
              "size": "large"
            },
            {
              "#text":
                  "https://lastfm.freetls.fastly.net/i/u/300x300/98235d2763524a66ca2c8b64fcff02b3.png",
              "size": "extralarge"
            }
          ],
          "streamable": "0",
          "mbid": ""
        }
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
        {
          "name": "Someone Like You",
          "artist": "Adele",
          "url": "https://www.last.fm/music/Adele/_/Someone+Like+You",
          "streamable": "FIXME",
          "listeners": "1245656",
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
          "mbid": "2e26fe2b-9f4d-4efa-96a4-d13de78cacac"
        },
        {
          "name": "Someday",
          "artist": "The Strokes",
          "url": "https://www.last.fm/music/The+Strokes/_/Someday",
          "streamable": "FIXME",
          "listeners": "1287217",
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
          "mbid": "e36646d7-dcbf-4b49-b8cf-a6fd5bcd480e"
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
        {
          "name": "Trevor Something",
          "listeners": "115025",
          "mbid": "5e114cdf-10f8-4d0b-a974-4b86491b1c7e",
          "url": "https://www.last.fm/music/Trevor+Something",
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
          "name": "Simone Sommerland",
          "listeners": "23278",
          "mbid": "6a7b0d71-73db-474a-8758-2fb93c8b5d56",
          "url": "https://www.last.fm/music/Simone+Sommerland",
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
