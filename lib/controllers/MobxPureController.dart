import 'package:mobx/mobx.dart';

class MobxPureController {

  var _counter = Observable(0);
  int get counter => _counter.value;
  set counter(int newValue) => _counter.value = newValue;
  Action increment;

  MobxPureController(){
    increment = Action(_increment);

    autorun((_){
      print(counter);
    });
  }

  _increment(){
    counter++;
  }
}