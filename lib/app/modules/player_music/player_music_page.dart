import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:flutter_player_music/app/models/music_model.dart';
import 'package:flutter_player_music/app/modules/player_music/player_music_store.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerMusicPage extends StatefulWidget {
  final BandModel band;
  const PlayerMusicPage({Key? key, required this.band}) : super(key: key);
  @override
  PlayerMusicPageState createState() => PlayerMusicPageState();
}

class PlayerMusicPageState extends State<PlayerMusicPage> {
  final PlayerMusicStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tocando Musica de ${widget.band.nome}"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          buildImageHeader(context),
          buildNameMusic(widget.band.musicas[0]),
          buildProgressBar(),
          buildButtons()
        ],
      ),
      backgroundColor: Colors.black,
    );
  }

  Container buildImageHeader(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 350,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(widget.band.imagem), fit: BoxFit.scaleDown),
            borderRadius: BorderRadius.circular(2),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 100, 100, 100),
                  blurRadius: 15,
                  offset: Offset(2, 5))
            ]),
      ),
    );
  }

  buildNameMusic(MusicModel musica) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            musica.nome,
            style: GoogleFonts.ptSansCaption(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          child: Text(
            widget.band.nome,
            style: GoogleFonts.ptSansCaption(
                fontSize: 14, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  buildProgressBar() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 30, right: 35, top: 30),
          child: LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            value: 0.5,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 35, top: 5),
          child: Row(
            children: <Widget>[
              Text('0:15'),
              Expanded(
                child: Container(),
              ),
              Text('2:35')
            ],
          ),
        )
      ],
    );
  }

  buildButtons() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(children: <Widget>[
        TextButton(
          child: Icon(Icons.fast_rewind, size: 70),
          onPressed: () {},
        ),
        Expanded(
          child: TextButton(
            child: Icon(Icons.play_circle_outlined, size: 70),
            onPressed: () {},
          ),
        ),
        TextButton(
          child: Icon(Icons.fast_forward, size: 70),
          onPressed: () {},
        )
      ]),
    );
  }
}
