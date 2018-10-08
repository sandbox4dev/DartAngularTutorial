import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_app/src/hero.dart';
import 'src/hero.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [formDirectives,coreDirectives],
  styleUrls: ['app_component.css'],
)
class AppComponent {
  var name = 'Slava';
  final title = 'Tour of herous';
  List<Hero> heroList = mockHeroes;
  Hero selectedHero;

  void onSelect(Hero hero) => selectedHero = hero;
}