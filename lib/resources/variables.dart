import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/resources/images.dart';

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
