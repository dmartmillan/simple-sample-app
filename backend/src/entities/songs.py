from typing import Union

songs = [{'id': 0, 'name': 'Don\'t Start Now', 'artist': 'Dua Lipa', 'link':
    'https://www.youtube.com/watch?v=YSoT3T58QFY&ab_channel=DuaLipaDuaLipaOfficialArtistChannel'},
         {'id': 1, 'name': 'Thunderclouds', 'artist': 'LSD', 'link':
             'https://www.youtube.com/watch?v=mILth-K6KvM&ab_channel=DiploDiploOfficialArtistChannel'},
         {'id': 2, 'name': 'Dark Necessities', 'artist': 'Red Hot Chilli Peppers', 'link':
             'https://www.youtube.com/watch?v=Q0oIoR9mLwc&ab_channel'
             '=RedHotChiliPeppersRedHotChiliPeppersOfficialArtistChannel'},
         {'id': 3, 'name': 'You & Me', 'artist': 'Disclosure', 'link':
             'https://www.youtube.com/watch?v=8x-M7AkTvrQ&ab_channel=FlumeFlume'},
         {'id': 4, 'name': 'Habits', 'artist': 'Tove Lo', 'link':
             'https://www.youtube.com/watch?v=SYM-RJwSGQ8&ab_channel=ToveLoToveLoOfficialArtistChannel'}]


def get_songs() -> list[dict[str, Union[int, str]]]:
    return songs
