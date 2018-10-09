import 'dart:async';
import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements OnInit{
  var name = 'Slava';
  final title = 'Tour of herous';

  final HeroService _heroService;
  AppComponent(this._heroService);

  List<Hero> heroList;

  Future<void> _getHeroes() async{
//    heroList = await _heroService.getAllHeroes();
    heroList = await _heroService.getAllHeroesSlowly();

  }

  void ngOnInit() => _getHeroes();

  Hero selectedHero;
  void onSelect(Hero hero) => selectedHero = hero;


}
