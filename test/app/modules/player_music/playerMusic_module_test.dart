import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_player_music/app/modules/player_music/player_music_module.dart';

void main() {
  setUpAll(() {
    initModule(PlayerMusicModule());
  });
}
