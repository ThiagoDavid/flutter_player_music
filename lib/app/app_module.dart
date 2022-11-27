import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/repositories/app_controller.dart';
import 'package:flutter_player_music/app/repositories/bands_repository.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds =>
      [Bind((i) => AppController()), Bind((i) => BandRepository())];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
