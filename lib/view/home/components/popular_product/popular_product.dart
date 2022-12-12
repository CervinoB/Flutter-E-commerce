import 'package:flutter/material.dart';
import 'package:my_grocery/view/home/components/popular_product/popular_product_card.dart';

import '../../../../model/product.dart';

class PopularProduct extends StatelessWidget {
  final List<Product> popularProducs;
  const PopularProduct({super.key, required this.popularProducs});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.only(right: 10),
      child: ListView.builder(
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: popularProducs.length,
          itemBuilder: (context, index) =>
              PopularProductCard(product: popularProducs[index])),
    );
  }
}
