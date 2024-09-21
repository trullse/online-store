import 'package:online_store/data/utils/random_point.dart';
import 'package:online_store/domain/entities/good.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GoodDataSource {
  Future<List<Good>> fetchGoods() async {
    final response = await http.get(Uri.https('fakestoreapi.com', 'products'));
    final jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList
        .map(
          (element) => Good.fromJson(element as Map<String, dynamic>).copyWith(
            storeLocation: getRandomPoint(),
          ),
        )
        .toList();
  }
}
