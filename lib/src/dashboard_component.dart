import 'package:angular/angular.dart';
import 'hero.dart';
import 'hero_service.dart';
import 'route_paths.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: ['dashboard_component.css'],
  directives: [coreDirectives, routerDirectives],
)
class DashboardComponent implements OnInit{
  List<Hero> heroes;

  final HeroService _heroService;

  DashboardComponent(this._heroService);

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  @override
  void ngOnInit() async{
      heroes = (await _heroService.getAllHeroes()).skip(1).take(4).toList();
  }
}