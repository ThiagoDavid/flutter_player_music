import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController controller;

  @override
  void initState() {
    super.initState();
    controller = Modular.get<HomeController>();
    controller.findAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Play List')),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      //----------------------------
      // CONSTRUÇÃO DA LISTA DA BANDA
      //---------------------------
      body: _makeListBands(controller.bandsFuture),
    );
  }

//Criação da lista de Bandas
  ListView _makeListBands(List<BandModel>? data) {
    var dados = data ?? [];
    return ListView.builder(
        itemCount: data?.length ?? 0,
        itemBuilder: (_, int index) {
          var band = dados[index];
          return ListTile(
            onTap: () => Modular.to.pushNamed('/player', arguments: band),
            leading: Image.network(band.imagem),
            title: Text(
              band.nome,
              style: GoogleFonts.notoSans(),
            ),
            subtitle: Text(band.categoria),
            contentPadding: EdgeInsets.all(10),
          );
        });
  }
}
