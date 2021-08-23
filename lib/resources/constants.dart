import 'package:sc_03/data/network/models/season.dart';

enum Screen { Character, Location, Episode, CharacterFilter, LocationFilter }

class Constants {
  static const String ThemeType = 'ThemeType';

  static const List<String> themeModeTitles = [
    'Выключена',
    'Включена',
    'Следовать настройкам системы',
    //'В режиме энергосбережения',
  ];

  static final List<Season> seasons = [
    Season('Сезон 1', []),
    Season('Сезон 2', []),
    Season('Сезон 3', []),
    Season('Сезон 4', []),
  ];

  static final List<String> locationsType = [
    "Мир",
    "Планета",
    "Микровселенная",
    "Цитадель",
    "Созданная реальность",
    "Здание",
    "Неопределенно",
  ];

  static final List<String> locationsMeasure = [
    "Измерение 35-C",
    "Измерение C-137",
    "Измерение C-500A",
    "Измерение J19ζ7",
    "Измерение Дупиду",
    "Измерение подмены",
  ];
}
