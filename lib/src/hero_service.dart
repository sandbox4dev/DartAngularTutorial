import 'dart:async';
import 'hero.dart';
import 'mock_heroes.dart';

class HeroService {
  Future<List<Hero>> getAllHeroes() async => mockHeroes;
  Future<List<Hero>> getAllHeroesSlowly() async => Future.delayed(Duration(seconds: 2), getAllHeroes);

}