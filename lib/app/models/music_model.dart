// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'music_model.g.dart';

@JsonSerializable()
class MusicModel {
  @JsonKey(name: '_id')
  String id;
  String nome;
  String url;
  MusicModel({
    required this.id,
    required this.nome,
    required this.url,
  });

  //factory MusicModel() = _MusicModel;
  factory MusicModel.fromJson(Map<String, dynamic> json) =>
      _$MusicModelFromJson(json);
  Map<String, dynamic> toJason() => _$MusicModelToJson(this);
}
