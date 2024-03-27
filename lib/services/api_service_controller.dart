import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:store/config/config_api_url.dart';
import 'package:store/models/products.dart';

class ApiService {
  Future getPosts({int limit = 4}) async {
    Uri url = Uri.parse('${ConfigAPI.API_URL}?limit=$limit');
    http.Response response = await http.get(url);
    inspect(response);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      List results = data
          .map((e) => Products(
                id: e['id'],
                title: e['title'],
                price: e['price'],
                description: e['description'],
                category: e['category'],
                image: e['image'],
                rating: e['rating'],
              ))
          .toList();
      return results;
    } else {
      throw Error();
    }
  }
}
