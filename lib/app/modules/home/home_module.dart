import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/modules/player_music/player_music_module.dart';
import 'package:flutter_player_music/app/repositories/bands_repository.dart';
import 'package:flutter_player_music/app/modules/home/home_controller.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> getbinds = [
    Bind((i) => HomeController(i.get<BandRepository>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ModuleRoute('/player', module: PlayerMusicModule())
  ];
}
