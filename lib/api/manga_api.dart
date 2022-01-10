import 'dart:convert';
import 'dart:developer';

// import 'package:weather_app/models/weather_forecast_daily.dart';
import 'package:manga_reader/model/manga_model.dart';
import 'package:manga_reader/utilities/constants.dart';
import 'package:http/http.dart' as http;

class MangaApi {
  Future<MangaModel> mangaconnectapi (String? mangaName, String? limit) async {
    Map<String, dynamic>? queryParametrs = {
      'title' : mangaName,
      'limit' : limit,
      
    };

    var uri = Uri.https(Constants.BASE_DOMAIN, Constants.BASE_MANGA_PATH,queryParametrs,);

       var response = await http.get(uri);

    print('response: ${response.body}');

    if (response.statusCode == 200) {
      return MangaModel.fromJson(json.decode(response.body));
    } else {
      return Future.error('Error response');
  }
  
} 
}