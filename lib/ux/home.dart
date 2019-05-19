import 'package:flutter/material.dart';

// App include widgets
import 'swipe_card.dart';

// home widget of the first Material App.
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 40, 20, 20),
            child: SwipeCard(),
          ),
        ],
      )
    );
  }
}
