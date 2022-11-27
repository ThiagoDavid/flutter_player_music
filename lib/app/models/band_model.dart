// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_player_music/app/models/music_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'band_model.g.dart';

@JsonSerializable()
class BandModel {
  @JsonKey(name: '_id')
  String id;
  String nome;
  String imagem;
  String categoria;
  List<MusicModel> musicas;
  BandModel({
    required this.id,
    required this.nome,
    required this.imagem,
    required this.categoria,
    required this.musicas,
  });

  factory BandModel.fromJson(Map<String, dynamic> json) =>
      _$BandModelFromJson(json);
  Map<String, dynamic> toJson() => _$BandModelToJson(this);
}
