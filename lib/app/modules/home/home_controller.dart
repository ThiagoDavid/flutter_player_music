// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mobx/mobx.dart';

import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:flutter_player_music/app/repositories/bands_repository.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  late final BandRepository bandRepository;

  HomeControllerBase(
    this.bandRepository,
  );

  @observable
  late ObservableFuture<List<BandModel>> bandsFuture;

  @action
  void findAll() {
    bandsFuture = ObservableFuture(bandRepository.findAllBands());
  }

  @override
  String toString() => 'HomeControllerBase(bandRepository: $bandRepository)';

  @override
  bool operator ==(covariant HomeControllerBase other) {
    if (identical(this, other)) return true;

    return other.bandRepository == bandRepository;
  }

  @override
  int get hashCode => bandRepository.hashCode;
}
