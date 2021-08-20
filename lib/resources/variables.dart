import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/data/network/models/season.dart';
import 'package:sc_03/resources/images.dart';

enum Screen { Character, Location, Episode, CharacterFilter, LocationFilter }

final List<Season> seasons = [
  Season('Сезон 1', []),
  Season('Сезон 2', []),
  Season('Сезон 3', []),
  Season('Сезон 4', []),
];

final List<String> locationsType = [
  "Мир",
  "Планета",
  "Микровселенная",
  "Цитадель",
  "Созданная реальность",
  "Здание",
  "Неопределенно",
];

final List<String> locationsMeasure = [
  "Измерение 35-C",
  "Измерение C-137",
  "Измерение C-500A",
  "Измерение J19ζ7",
  "Измерение Дупиду",
  "Измерение подмены",
];

final Character character1 = Character(
  fullName: 'Рик Санчез',
  status: 0,
  imageName: Images.profile1,
  race: 'Человек',
  gender: 0,
  about:
      'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм,'
      ' безрассудность и социопатия заставляют беспокоиться семью его дочери.',
  location: Location(name: 'Земля', measurements: "Измерение подменны"),
);

final List<Character> charactersList = [character1];

/*
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/resources/images.dart';
import 'package:sc_03/data/network/models/episode.dart';

final List<Character> charactersList = [
  Character('Рик Санчез', 'ЖИВОЙ', Images.character1, 'Человек', 'Мужской',
      'Земля С-137'),
  Character('Директор Агенства', 'ЖИВОЙ', Images.character2, 'Человек',
      'Мужской', 'Земля С-137'),
  Character('Морти Смит', 'ЖИВОЙ', Images.character3, 'Человек', 'Мужской',
      'Земля С-137'),
  Character('Саммер Смит', 'ЖИВОЙ', Images.character4, 'Человек', 'Женский',
      'Земля С-137'),
  Character('Альберт Эйнштейн', 'МЕРТВЫЙ', Images.character5, 'Человек',
      'Мужской', 'Земля С-137'),
  Character('Алан Райлс', 'МЕРТВЫЙ', Images.character6, 'Человек', 'Мужской',
      'Земля С-137'),
];

final Character character1 = Character(
  'Рик Санчез',
  'ЖИВОЙ',
  Images.profile1,
  'Человек',
  'Мужской',
  'Земля С-137',
  biography:
      'Главный протагонист мультсериала «Рик и Морти». Безумный ученый, чей алкоголизм,'
      ' безрассудность и социопатия заставляют беспокоиться семью его дочери.',
  location: 'Земля (Измерение подменны)',
);

final List<Episode> episodesList = [
  Episode(
    Images.chapter1,
    'Серия 1',
    'Пилот',
    '2 декабря 2013',
    characters: List.from(charactersList),
  ),
  Episode(
    Images.chapter2,
    'Серия 2',
    'Пёс-газонокосильщик',
    '9 декабря 2013',
    characters: List.from(charactersList),
  ),
  Episode(
    Images.chapter3,
    'Серия 3',
    'Анатомический парк',
    '16 декабря 2013',
    characters: List.from(charactersList),
  ),
  Episode(
    Images.chapter4,
    'Серия 4',
    'М. Найт Шьямал-Инопланетяне!',
    '13 января 2014',
    characters: List.from(charactersList),
  ),
  Episode(
    Images.chapter5,
    'Серия 5',
    'Мисикс и разрушение',
    '20 января 2014',
    characters: List.from(charactersList),
  ),
  Episode(
    Images.chapter6,
    'Серия 6',
    'Напиток Рика № 9',
    '27 января 2014',
    characters: List.from(charactersList),
  ),
  Episode(
    Images.chapter7,
    'Серия 7',
    'Воспитание Газорпазорпа',
    '10 марта 2014',
    characters: List.from(charactersList),
  ),
];

final Location location1 = Location(
  'Земля С-137',
  'Мир',
  'Измерение С-137',
  image: Images.location1,
  description:
      'Это планета, на которой проживает человеческая раса, и главное место для '
      'персонажей Рика и Морти. Возраст этой Земли более 4,6 миллиардов лет, '
      'и она является четвертой планетой от своей звезды.',
);

final List<Location> locationsList = [
  Location(
    'Земля С-137',
    'Мир',
    'Измерение С-137',
    image: Images.location1,
  ),
  Location(
    'Анатомический парк',
    'Мир',
    'Измерение С-137',
    image: Images.location2,
  ),
  Location(
    'Нуптии-4',
    'Мир',
    'Измерение С-137',
    image: Images.location3,
  ),
  Location(
    'Нуптии-4',
    'Мир',
    'Измерение С-137',
    image: Images.location3,
  ),
];

List<String> get themeModeTitles => [
      'Выключена',
      'Включена',
      'Следовать настройкам системы',
      'В режиме энергосбережения',
    ];

List<Character> charactersAtLocation = getCharactersOnPlanet(location1.name);

List<Character> getCharactersOnPlanet(String planet) =>
    charactersList.where((char) => char.birthplace == planet).toList();

List<Character> getCharactersOnEpisode(String episode) {
  for (final chapter in episodesList) {
    if (chapter.title == episode) {
      return chapter.characters;
    }
  }
  throw 'Episode not found';
}



Episode get selectedEpisode => Episode(
      Images.chapter4,
      'Серия 4',
      'М. Найт Шьямал-Инопланетяне!',
      '13 января 2014',
      description:
          'Зигерионцы помещают Джерри и Рика в симуляцию, чтобы узнать секрет '
          'изготовления концентрированной темной материи.',
      characters: List.from(charactersList),
    );
*/
