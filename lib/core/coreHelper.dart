import 'package:deneme2/core/enums.dart';
import 'helpers/requestHelpers.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sprintf/sprintf.dart';

CategoryEnum detectCategory(String category) {
  var categoryEnum;
  if (category == 'gündem') {
    categoryEnum = CategoryEnum.general;
  } else if (category == 'spor') {
    categoryEnum = CategoryEnum.sport;
  } else if (category == 'teknoloji') {
    categoryEnum = CategoryEnum.technology;
  } else if (category == 'politika') {
    categoryEnum = CategoryEnum.politic;
  } else if (category == 'is_dünyasi') {
    categoryEnum = CategoryEnum.bussines;
  } else {
    categoryEnum = CategoryEnum.all;
  }
  return categoryEnum;
}

String getApiUrl(String category) {
  String url = sprintf(
      "https://newsapi.org/v2/top-headlines?country=tr&category=%s&apiKey=445cb388840d47af8a94a665f03d546b",
      [category]);
  return url;
}

Future<NewsJson> fetchJson(String category) async {
  final response = await http.get(Uri.parse(getApiUrl(category)));

  if (response.statusCode == 200) {
    return NewsJson.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}
