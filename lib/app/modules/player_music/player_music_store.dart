import 'package:mobx/mobx.dart';

part 'player_music_store.g.dart';

class PlayerMusicStore = _PlayerMusicStoreBase with _$PlayerMusicStore;

abstract class _PlayerMusicStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
