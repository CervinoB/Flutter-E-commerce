import 'package:http/http.dart' as http;
import 'package:my_grocery/const.dart';

class RemotePopularCategoryService {
  final client = http.Client();
  final remoteUrl = '$baseUrl/api/popular-categories';

  Future<dynamic> get() async {
    final response = await client.get(Uri.parse(
        '$remoteUrl?populate=category,category.image&pagination[start]=0&pagination[limit]=5'));
    // print(response.body);
    return response;
  }
}
