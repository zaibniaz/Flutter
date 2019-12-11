import 'package:flutter/material.dart';

import 'roleviews/AddNewRoleScreen.dart';

void main() => runApp(MaterialApp(
  home : MyApp()
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   return Scaffold(
        appBar : AppBar(
          title: Text('Flutter Demo'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
      
      
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
               Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return new AddNewRoleScreen();
            }));
          },
          child: Icon(
           Icons.add
          ),
          backgroundColor: Colors.amber,
        ),
      );
}
}

