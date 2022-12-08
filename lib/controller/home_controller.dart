import 'package:get/get.dart';
import 'package:my_grocery/model/ad_banner.dart';
import 'package:my_grocery/service/remote_service/remote_service_banner.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;

  @override
  void onInit() {
    getAdBanners();
    super.onInit();
  }

  void getAdBanners() async {
    try {
      isBannerLoading(true);
      final result = await RemoteBannerService().get();
      if (result != null) {
        bannerList.assignAll(adBannerListFromJson(result.body));
      }
    } finally {
      // print(bannerList.first.image);
      isBannerLoading(false);
    }
  }
}
