import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/data/network/models/season.dart';
import 'package:sc_03/resources/images.dart';
import 'package:sc_03/screens/profile/models/chapter.dart';

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

final List<Chapter> chaptersList = [
  Chapter(Images.chapter1, 'Серия 1', 'Пилот', '2 декабря 2013'),
  Chapter(Images.chapter2, 'Серия 2', 'Пёс-газонокосильщик', '9 декабря 2013'),
  Chapter(Images.chapter3, 'Серия 3', 'Анатомический парк', '16 декабря 2013'),
  Chapter(Images.chapter4, 'Серия 4', 'М. Найт Шьямал-Инопланетяне!',
      '13 января 2014'),
  Chapter(Images.chapter5, 'Серия 5', 'Мисикс и разрушение', '20 января 2014'),
  Chapter(Images.chapter6, 'Серия 6', 'Напиток Рика № 9', '27 января 2014'),
  Chapter(
      Images.chapter7, 'Серия 7', 'Воспитание Газорпазорпа', '10 марта 2014'),
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

List<Character> charactersOnLocation = getCharactersOnPlanet(location1.name);

List<Character> getCharactersOnPlanet(String planet) =>
    charactersList.where((char) => char.birthplace == planet).toList();

final seasons = [
  Season('Сезон 1', chaptersList),
  Season('Сезон 2', List.from(chaptersList)..shuffle()),
  Season('Сезон 3', List.from(chaptersList)..shuffle()),
  Season('Сезон 4', List.from(chaptersList)..shuffle()),
];
