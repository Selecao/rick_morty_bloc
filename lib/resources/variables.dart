import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/resources/images.dart';
import 'package:sc_03/screens/profile/models/chapter.dart';

final List<Character> charactersList = [
  Character('Рик Санчез', 'ЖИВОЙ', Images.character1, 'Человек', 'Мужской',
      'Земля C-137'),
  Character('Директор Агенства', 'ЖИВОЙ', Images.character2, 'Человек',
      'Мужской', 'Земля C-137'),
  Character('Морти Смит', 'ЖИВОЙ', Images.character3, 'Человек', 'Мужской',
      'Земля C-137'),
  Character('Саммер Смит', 'ЖИВОЙ', Images.character4, 'Человек', 'Женский',
      'Земля C-137'),
  Character('Альберт Эйнштейн', 'МЕРТВЫЙ', Images.character5, 'Человек',
      'Мужской', 'Земля C-137'),
  Character('Алан Райлс', 'МЕРТВЫЙ', Images.character6, 'Человек', 'Мужской',
      'Земля C-137'),
];

final Character character1 = Character(
  'Рик Санчез',
  'ЖИВОЙ',
  Images.profile1,
  'Человек',
  'Мужской',
  'Земля C-137',
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
];
