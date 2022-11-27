// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  late final _$bandsFutureAtom =
      Atom(name: 'HomeControllerBase.bandsFuture', context: context);

  @override
  List<BandModel> get bandsFuture {
    _$bandsFutureAtom.reportRead();
    return super.bandsFuture;
  }

  @override
  set bandsFuture(List<BandModel> value) {
    _$bandsFutureAtom.reportWrite(value, super.bandsFuture, () {
      super.bandsFuture = value;
    });
  }

  late final _$HomeControllerBaseActionController =
      ActionController(name: 'HomeControllerBase', context: context);

  @override
  void findAll() {
    final _$actionInfo = _$HomeControllerBaseActionController.startAction(
        name: 'HomeControllerBase.findAll');
    try {
      return super.findAll();
    } finally {
      _$HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bandsFuture: ${bandsFuture}
    ''';
  }
}
