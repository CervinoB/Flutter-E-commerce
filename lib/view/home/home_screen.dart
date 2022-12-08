import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:my_grocery/component/main_header.dart';
import 'package:my_grocery/controller/controllers.dart';
import 'package:my_grocery/view/home/components/carousel_slider/carousel_loading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainHeader(),
          Obx(() {
            if (homeController.isBannerLoading.value) {
              return CarouselLoading();
            } else {
              return CarouselLoading();
            }
          })
        ],
      ),
    );
  }
}
