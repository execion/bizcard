import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp( new MaterialApp(
  home: BizCard(),
));


class BizCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Center(
              child: Text(
              "BizCard",
              ),
          ) ,
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              _getCard(),
              _getAvatar()
            ],
          ),
        ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(4.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "EXECION",
            style: TextStyle(
              fontSize: 19.0,
              fontWeight: FontWeight.w800,
              color: Colors.white,
              letterSpacing: 2.0
            ),
          ),
          Text(
              "execion@github.com",
              style: TextStyle(
                color: Colors.white,
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                  Icons.person_outline,
                  color: Colors.white
              ),
              Text(
                  "T: ",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              Text(
                  "@BuildAppTest",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900
                  ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
            color: Colors.redAccent, width: 2.0
        ),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}