import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/players_choice.dart';

class Result extends StatefulWidget {

   Result({this.player1_name,this.player2_name,this.choice1,this.choice2});

  final player1_name,player2_name,choice1,choice2;

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String winner="";
  void fun(int c1,int c2,String p1,String p2){
    if(c1==c2)
     winner="none";
    else if(c1==1&&c2==3 || c1==2&&c2==1 || c1==3&&c2==2)
     winner=p1;
    else
     winner=p2;

     return; 
  }
  @override
  Widget build(BuildContext context) {
    fun(widget.choice1,widget.choice2,widget.player1_name,widget.player2_name);
    return Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.only(top:300),
            child: Column(children: [
              Text("The Winner is " + winner,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (() => {
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Pone(
                        player1_name: widget.player1_name,
                        player2_name: widget.player2_name,
                        
                      );
                    }))
              }), child: Text("PLAY AGAIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
            ],),

            
          ),
        )
    );
  }
}
