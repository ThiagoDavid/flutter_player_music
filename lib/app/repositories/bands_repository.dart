import 'package:dio/dio.dart';
import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:flutter_player_music/app/models/music_model.dart';

class BandRepository {
  var bandasJSon = {
    {
      "id": "1",
      "nome": "Led Zeppelin",
      "imagem": "https://m.media-amazon.com/images/I/81t2jV1C9-L._SX425_.jpg",
      "categoria": "Rock"
    },
    {"id": "2", "nome": "Iron Maden", "imagem": "-", "categoria": "Rock"}
  };

  var bandas = [
    BandModel(
        id: "1",
        nome: "Led Zepplin",
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/51R0kmLXF1L._SX450_.jpg",
        categoria: "Rock",
        musicas: [MusicModel(id: "1", nome: "Stairway to Heaven", url: "url")]),
    BandModel(
        id: "2",
        nome: "Iron Maiden",
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/91AbFx1Ny4L._AC_SX569_.jpg",
        categoria: "Rock",
        musicas: [MusicModel(id: "1", nome: "Wasting Love", url: "url")]),
    BandModel(
        id: "3",
        nome: "Casting Crowns",
        imagem: "https://m.media-amazon.com/images/I/81t2jV1C9-L._SX425_.jpg",
        categoria: "Gospel",
        musicas: [
          MusicModel(id: "1", nome: "Until the whole world hear", url: "url")
        ]),
    BandModel(
        id: "4",
        nome: "Seventh Day Slumber",
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/51ElTJ9hCyL._SX300_SY300_QL70_ML2_.jpg",
        categoria: "Rock",
        musicas: [
          MusicModel(id: "1", nome: "Nothing But The Blood", url: "url")
        ]),
    BandModel(
        id: "5",
        nome: "Cloverton",
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/51GNIVqMfdL._SX342_QL70_ML2_.jpg",
        categoria: "Gospel",
        musicas: [
          MusicModel(id: "1", nome: "Take Me Into The Beautiful", url: "url")
        ]),
    BandModel(
        id: "6",
        nome: "Mamonas Assassinas",
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/51AP7j90WkL._SX466_.jpg",
        categoria: "Rock",
        musicas: [MusicModel(id: "1", nome: "Pelados em Santos", url: "url")])
  ];

  List<BandModel> findAllBands() {
    // var dio = Dio();
    // return dio.get('http//localhost:3000/bands').then((res) =>
    //     res.data.map<BandModel>((b) => BandModel.fromJson(b)).toList());
    return bandas;
  }

  Future<BandModel> findById(String id) {
    return Dio()
        .get('http://localhost:3000/bandas/$id')
        .then((res) => BandModel.fromJson(res.data));
  }
}
