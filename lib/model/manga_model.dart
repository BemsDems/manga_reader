import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

part 'manga_model.g.dart';

@JsonSerializable()
class MangaModel {
  
  @JsonKey(name: 'data')
  List<Manga>? mangaList;

  

  MangaModel({this.mangaList});

  factory MangaModel.fromJson(Map<String, dynamic> json) => _$MangaModelFromJson(json);
      
}

@JsonSerializable()
class Manga {
  String? id;

  @JsonKey(name: 'attributes')
  OneAttributes? attributesList;

  
  

   
 Manga({ this.id, this.attributesList});

   factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);
      

   
}
@JsonSerializable()
class OneAttributes {

  Map<String, dynamic>? title;
  Map<String, dynamic>? description;

  
  
  OneAttributes({this.title,this.description});

  factory OneAttributes.fromJson(Map<String, dynamic> json) => _$OneAttributesFromJson(json);


}

