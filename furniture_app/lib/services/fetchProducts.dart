import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:furniture_app/models/Product.dart';

// Fetct our product from API
Future<List<Product>> fecthProducts() async {
  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";

  final response = await http.get(apiUrl);
  if (response.statusCode == 200) {
    List<Product> products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();

    return products;
  } else {
    throw Exception('Failed to load');
  }
}
