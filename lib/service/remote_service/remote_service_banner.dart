import 'package:http/http.dart' as http;
import 'package:my_grocery/const.dart';

class RemoteBannerService {
  final client = http.Client();
  final remoteUrl = '$baseUrl/api/banners';

  Future<dynamic> get() async {
    final response = await client.get(Uri.parse('$remoteUrl?populate=image'));
    return response;
  }
}
