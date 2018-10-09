import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'hero.dart';

@Component(
  selector: 'hero-selector',
  template: '''
                <div *ngIf="selectedHero != null">
                  <h2>{{selectedHero.name}}</h2>
                  <div><label>id: </label>{{selectedHero.id}}</div>
                   <div>
                      <label>name: </label>
                      <input [(ngModel)]="selectedHero.name" placeholder="name">
                    </div>
                </div>''',
  directives: [coreDirectives, formDirectives],
)
class HeroComponent {
  @Input('myHero')
  Hero selectedHero;
}