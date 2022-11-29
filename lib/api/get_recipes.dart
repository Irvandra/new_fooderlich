import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

import '../models/models.dart';

class GetRecipes {
  // static var URL = Uri.https('uji.fmipa.unila.ac.id', '/api-test/recipes.json');

  Future<List<SimpleRecipe>> getRecipes() async {
    // final response = await http.get(URL);
    final response = await Dio().get('https://uji.fmipa.unila.ac.id/api-test/recipes.json');
    final recipes = <SimpleRecipe>[];
    if (response.statusCode == 200) {
      // final Map<String, dynamic> json = jsonDecode(response.body);
      final Map<String, dynamic> json = jsonDecode(response.toString());

      // Go through each recipe and convert json to ExploreRecipe object.
      if (json['recipes'] != null) {
        final recipes = <SimpleRecipe>[];
        json['recipes'].forEach((v) {
          recipes.add(SimpleRecipe.fromJson(v));
        });
        return recipes;
      } else {
        return [];
      }
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}