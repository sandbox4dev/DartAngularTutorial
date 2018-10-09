import 'dart:async';
import 'package:angular/angular.dart';
import 'hero.dart';
import 'hero_component.dart';
import 'hero_service.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives, HeroComponent],
)
class HeroListComponent implements OnInit{

  final HeroService _heroService;
  HeroListComponent(this._heroService);

  List<Hero> heroList;

  Future<void> _getHeroes() async{
    heroList = await _heroService.getAllHeroes();
//    heroList = await _heroService.getAllHeroesSlowly();
  }

  void ngOnInit() => _getHeroes();

  Hero selectedHero;
  void onSelect(Hero hero) => selectedHero = hero;


}
