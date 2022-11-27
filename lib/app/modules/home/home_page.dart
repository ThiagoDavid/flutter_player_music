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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //store.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }

//Criação da lista de Bandas
  ListView _makeListBands(List<BandModel>? data) {
    return ListView.builder(itemBuilder: (_, int index) {
      return ListTile(
        onTap: () => Modular.to.pushNamed('/player',
            arguments:
                'https://m.media-amazon.com/images/I/81t2jV1C9-L._SX425_.jpg'),
        leading: Image.network(
            'https://m.media-amazon.com/images/I/81t2jV1C9-L._SX425_.jpg'),
        title: Text(
          'Casting Crowns',
          style: GoogleFonts.notoSans(),
        ),
        subtitle: Text('Until The Whole World Hears'),
        contentPadding: EdgeInsets.all(10),
      );
    });
  }
}
