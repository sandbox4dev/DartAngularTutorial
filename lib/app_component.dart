import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/hero_component.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives,HeroComponent],
)

class AppComponent {
  var name = 'Slava';
  final title = 'Tour of herous';
  List<Hero> heroList = mockHeroes;
  Hero selectedHero;
  void onSelect(Hero hero) => selectedHero = hero;
}