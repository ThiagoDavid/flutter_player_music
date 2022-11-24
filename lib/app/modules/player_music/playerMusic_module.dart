import 'package:flutter_player_music/app/modules/player_music/playerMusic_page.dart';
import 'package:flutter_player_music/app/modules/player_music/playerMusic_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PlayerMusicModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PlayerMusicStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PlayerMusicPage(url: args.data)),
  ];
}
