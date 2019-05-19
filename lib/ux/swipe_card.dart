import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:swipe_flip/ux/single_card.dart';

class SwipeCard extends StatelessWidget{

  final ctrlSwipe = new SwiperController();

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context,int index){
        return SingleCard(cardID: index.toString());
      },
      itemCount: 6,
      itemWidth: 300.0,
      itemHeight: 400.0,
      viewportFraction: 0.9,
      scale: 0.9,
      //layout: SwiperLayout.TINDER,
      //layout: SwiperLayout.STACK

      // TODO: Pagination and controller, which will jump to required card
      // pagination: new SwiperPagination( ),
      // controller: ctrlSwipe,
      // ctrlSwipe.move(3, true);
    );
  }
}

