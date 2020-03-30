// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_code_gen_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MobxCodeGenController on MobxCodeGenControllerBase, Store {
  final _$counterAtom = Atom(name: 'MobxCodeGenControllerBase.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$MobxCodeGenControllerBaseActionController =
      ActionController(name: 'MobxCodeGenControllerBase');

  @override
  dynamic increment() {
    final _$actionInfo =
        _$MobxCodeGenControllerBaseActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$MobxCodeGenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'counter: ${counter.toString()}';
    return '{$string}';
  }
}
