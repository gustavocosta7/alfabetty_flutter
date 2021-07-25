import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  final String assetName = 'svg/girl.svg';

  @override
  Widget build(BuildContext context) {
    final String assetName = 'svg/girl.svg';
    final Widget svg = SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back.jpg"), fit: BoxFit.cover)),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 100,
                child: svg,
              ),
              Container(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 60, fontFamily: 'BubbleBobble'),
                        children: const <TextSpan>[
                      TextSpan(
                          text: 'A',
                          style: TextStyle(
                              color: Colors.blueAccent)),
                      TextSpan(
                          text: 'L',
                          style: TextStyle(
                              color: Colors.orange)),
                      TextSpan(
                          text: 'F',
                          style: TextStyle(
                              color: Colors.lightBlueAccent)),
                      TextSpan(
                          text: 'A',
                          style: TextStyle(
                              color: Colors.redAccent)),
                      TextSpan(
                          text: 'B',
                          style: TextStyle(
                              color: Colors.greenAccent)),
                      TextSpan(
                          text: 'E',
                          style: TextStyle(
                              color: Colors.pinkAccent)),
                      TextSpan(
                          text: 'T',
                          style: TextStyle(
                              color: Colors.green)),
                      TextSpan(
                          text: 'T',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent)),
                      TextSpan(
                          text: 'Y',
                          style: TextStyle(
                              color: Colors.lightGreenAccent)),
                    ])),
              )
            ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color.fromRGBO(0, 116, 217, 1),
                child: Icon(Icons.query_stats),
              ),
              Container(
                  width: 75,
                  height: 75,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Color.fromRGBO(1, 255, 122, 1),
                    child: Icon(
                      Icons.play_arrow,
                    ),
                  )),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Color.fromRGBO(255, 250, 0, 1),
                child: Icon(Icons.settings),
              )
            ],
          ),
        ));
  }
}
