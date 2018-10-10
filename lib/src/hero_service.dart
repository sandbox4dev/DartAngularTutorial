import 'dart:async';
import 'hero.dart';
import 'mock_heroes.dart';

class HeroService {
  Future<List<Hero>> getAllHeroes() async => mockHeroes;
  Future<List<Hero>> getAllHeroesSlowly() async => Future.delayed(Duration(seconds: 2), getAllHeroes);
  Future<Hero> get (int id) async => (await getAllHeroes()).firstWhere((hero)=>hero.id == id);

}