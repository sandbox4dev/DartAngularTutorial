import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  template:
  '<h1>{{title}}</h1>'
      '<h2>{{hero.name}}</h2>'
        '<div>'
            '<label>id: </label>{{hero.id}}'
        '</div>'
        '<div>'
            '<label>name: </label>'
            '<input [(ngModel)]="hero.name" placeholder="name">'
        '</div>',
  directives: [formDirectives],
)
class AppComponent {
  var name = 'Slava';
  final title = 'Tour of herous';
  Hero hero = new Hero(1, 'Drunk-Man');
}