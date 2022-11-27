// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'band_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BandModel _$BandModelFromJson(Map<String, dynamic> json) => BandModel(
      id: json['_id'] as String,
      nome: json['nome'] as String,
      imagem: json['imagem'] as String,
      categoria: json['categoria'] as String,
      musicas: (json['musicas'] as List<dynamic>)
          .map((e) => MusicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BandModelToJson(BandModel instance) => <String, dynamic>{
      '_id': instance.id,
      'nome': instance.nome,
      'imagem': instance.imagem,
      'categoria': instance.categoria,
      'musicas': instance.musicas,
    };
