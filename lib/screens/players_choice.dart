import 'package:flutter/material.dart';
import './result.dart';


class Pone extends StatefulWidget {
  Pone({this.player1_name, this.player2_name});

  final player1_name;
  final player2_name;

  @override
  _PoneState createState() => _PoneState();
}

class _PoneState extends State<Pone> {
  String _currplayer = "";
  int choice1 = 0, choice2 = 0;
  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   _currplayer=widget.player1_name;
    // });
    if(_currplayer!=widget.player2_name)
     _currplayer=widget.player1_name;

    return Scaffold(
        body: Center(
            child: Column(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        Text( _currplayer + " choose your weapon",
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 100,),
        MaterialButton(
          onPressed: () => {
            _currplayer == widget.player1_name ? choice1 = 1 : choice2 = 1,
            // print(choice1),
            if (_currplayer == widget.player2_name)
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Result(
                    player1_name: widget.player1_name,
                    player2_name: widget.player2_name,
                    choice1: choice1,
                    choice2: choice2,
                  );
                }))
              }else{
                setState(() {
                  _currplayer=widget.player2_name;
                })
              }
          },
          child: Row(children: const <Widget>[
            SizedBox(width: 10,),
            Icon(Icons.sports_baseball_rounded,size: 50,),
            SizedBox(
              width: 20,
            ),
            Text("Rock",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ]),
        ),
        SizedBox(
          height: 40,
        ),
        MaterialButton(
          onPressed: () => {
            _currplayer == widget.player1_name ? choice1 = 2 : choice2 = 2,
            // print(choice2),
            if (_currplayer == widget.player2_name)
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Result(
                    player1_name: widget.player1_name,
                    player2_name: widget.player2_name,
                    choice1: choice1,
                    choice2: choice2,
                  );
                }))
              }else{
                 setState(() {
                  _currplayer=widget.player2_name;
                })
              }
          },
          child: Row(children: <Widget>[
            SizedBox(width: 10,),
            Icon(Icons.menu_book_sharp,size: 50,),
            SizedBox(
              width: 20,
            ),
            Text("paper",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ]),
        ),
        SizedBox(
          height: 40,
        ),
        MaterialButton(
          onPressed: () => {
            _currplayer == widget.player1_name ? choice1 = 3 : choice2 = 3,
            // print(choice1),
            if (_currplayer == widget.player2_name)
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Result(
                    player1_name: widget.player1_name,
                    player2_name: widget.player2_name,
                    choice1: choice1,
                    choice2: choice2,
                  );
                }))
              }else{
                 setState(() {
                  _currplayer=widget.player2_name;
                })
              }
          },
          child: Row(children: <Widget>[
            SizedBox(width: 10,),
            Icon(Icons.cut,size: 50,),
            SizedBox(
              width: 20,
            ),
            Text("Scissors",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ]),
        ),
      ],
    )));
  }
}
