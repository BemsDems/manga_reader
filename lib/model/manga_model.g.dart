// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MangaModel _$MangaModelFromJson(Map<String, dynamic> json) => MangaModel(
      mangaList: (json['data'] as List<dynamic>?)
          ?.map((e) => Manga.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MangaModelToJson(MangaModel instance) =>
    <String, dynamic>{
      'data': instance.mangaList,
    };

Manga _$MangaFromJson(Map<String, dynamic> json) => Manga(
      id: json['id'] as String?,
      attributesList: json['attributes'] == null
          ? null
          : OneAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MangaToJson(Manga instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributesList,
    };

OneAttributes _$OneAttributesFromJson(Map<String, dynamic> json) =>
    OneAttributes(
      title: json['title'] as Map<String, dynamic>?,
      description: json['description'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OneAttributesToJson(OneAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
