// import 'package:http/http.dart';

// const String apiKey = 'd816f82c57c563fb4046ae1705d412cb	';
// const String apiId = 'ebf38f67';
// const String apiUrl = 'https://api.edamam.com/search';

// // 1
// Future getData(String url) async {
//   // 2
//   print('Calling url: $url');
//   // 3
//   final response = await get(url);
//   // 4
//   if (response.statusCode == 200) {
//     // 5
//     return response.body;
//   } else {
//     // 6
//     print(response.statusCode);
//   }
// }

// class RecipeService {
//   // 1
//   Future<dynamic> getRecipes(String query, int from, int to) async {
//     // 2
//     final recipeData = await getData(
//         '$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
//     // 3
//     return recipeData;
//   }
// }
