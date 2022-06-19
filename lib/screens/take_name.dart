import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/players_choice.dart';

class TakeName extends StatefulWidget {
  @override
  _TakeNameState createState() => _TakeNameState();
}

class _TakeNameState extends State<TakeName> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String player1_name = "", player2_name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 200,
          ),
          const Text(
            "Enter Players Name !",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Player1 Name',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      player1_name = value;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter Player2 Name',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      player2_name = value;
                    },
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate will return true if the form is valid, or false if
                          // the form is invalid.
                         if(player1_name==""||player2_name==""){
                           return;
                         }
                          if (_formKey.currentState!.validate()) {
                            // Process data.
                          }
                          print(player1_name);
                          print(player2_name);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Pone(
                                player1_name: player1_name,
                                player2_name: player2_name);
                          }));
                        },
                        child: const Text('PLAY',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
