import 'package:dio/dio.dart';
import 'package:flutter_player_music/app/models/band_model.dart';

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
        imagem: "https://m.media-amazon.com/images/I/81t2jV1C9-L._SX425_.jpg",
        categoria: "Rock",
        musicas: [])
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
