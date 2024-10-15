import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:demo_ccb/config/config.dart';
import 'package:demo_ccb/features/shared/shared.dart';

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Swiper(
        itemCount: cardSwiper.length,
        pagination: const SwiperPagination(
            margin: EdgeInsets.only(top: 0),
            builder: DotSwiperPaginationBuilder(
                color: Colors.grey, activeColor: Colors.red)),
        autoplay: true,
        itemBuilder: (context, index) {
          final swiper = cardSwiper[index];
          return CustomSwiperImage(
            imageUrl: swiper.imageUrl,
          );
        },
      ),
    );
  }
}
