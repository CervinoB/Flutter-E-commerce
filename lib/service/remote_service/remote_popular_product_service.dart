import 'package:http/http.dart' as http;
import 'package:my_grocery/const.dart';

class RemotePopularProductService {
  final client = http.Client();
  final remoteUrl = '$baseUrl/api/popular-products';

  Future<dynamic> get() async {
    final response = await client
        .get(Uri.parse('$remoteUrl?populate=product,product.images'));
    return response;
  }
}
