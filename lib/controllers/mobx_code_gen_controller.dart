import 'package:mobx/mobx.dart';
part 'mobx_code_gen_controller.g.dart';

class MobxCodeGenController = MobxCodeGenControllerBase with _$MobxCodeGenController;

abstract class MobxCodeGenControllerBase with Store {

  @observable
  int counter = 0;

  @action
  increment(){
    counter++;
  }

}