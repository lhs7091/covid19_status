import 'dart:convert';
import 'package:covid19_status/api/api_keys.dart';
import 'package:covid19_status/model/model.dart';
<<<<<<< HEAD
import 'package:covid19_status/model/modelToday.dart';
=======
>>>>>>> 56a367bbfa14e105b787709df3fff0bf41307200
import 'package:http/http.dart' as http;

class APIService {
  APIKeys apiKeys;

  Future<Model> getDataByWeb() async {
    final uri = makeUrl();
    http.Response response = await http.get(
        Uri.encodeFull("https://cors-anywhere.herokuapp.com/${uri}"),
        headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      Model _model = Model.fromJson(data);
      return _model;
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  Future<Model> getDataByMobile() async {
    final uri = makeUrl();
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      Model _model = Model.fromJson(data);
      return _model;
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  makeUrl() {
    String host = APIKeys.baseUrl.toString();
    String serviceKey = APIKeys.serviceKey.toString();
    String basePath = "korea/";
    Uri uri = new Uri(
        scheme: 'http',
        host: host,
        path: basePath,
        queryParameters: {'serviceKey': '${serviceKey}'});
    return uri;
  }

  Future<ModelToday> getTodayDataByWeb() async {
    final uri = makeTodayUrl();
    http.Response response = await http.get(
        Uri.encodeFull("https://cors-anywhere.herokuapp.com/${uri}"),
        headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      ModelToday _model = ModelToday.fromJson(data);
      return _model;
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  Future<ModelToday> getTodayDataByMobile() async {
    final uri = makeTodayUrl();
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      ModelToday _model = ModelToday.fromJson(data);
      return _model;
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }

  makeTodayUrl() {
    String host = APIKeys.baseUrl.toString();
    String serviceKey = APIKeys.serviceKey.toString();
    String basePath = "korea/country/new/";
    Uri uri = new Uri(
        scheme: 'http',
        host: host,
        path: basePath,
        queryParameters: {'serviceKey': '${serviceKey}'});
    return uri;
  }
}
