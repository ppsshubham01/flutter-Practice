import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
import 'package:myapp/screens/screen_first.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Explore new widgets",
    home: Scaffold(
      key: _scaffoldKey,
      body: getListView(),
    ),
    // home: Home(),
  ));
}

Widget getListView() {
  var listview = ListView(
    children: [
      const ListTile(
        leading: Icon(Icons.ac_unit_rounded),
        title: Text("It's Winter"),
        subtitle: Text("I Love Winter!"),
        trailing: Icon(Icons.sunny_snowing),
      ),
      const ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("It's Window"),
        trailing: Icon(Icons.account_box_sharp),
      ),
      const ListTile(
        leading: Icon(Icons.ac_unit_rounded),
        title: Text("It's Watch"),
        trailing: Icon(Icons.watch),
      ),
      const Text("If You Purchase this all you get 60% Discount!"),
      Container(
        margin: const EdgeInsets.only(top: 20.0),
        color: Colors.red,
        height: 30.2,
      ),
      Container(
        margin: const EdgeInsets.only(top: 20.0),
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.lime)),
          onPressed: () async {
            // Get the current NavigatorState object.
            final navigatorState = Navigator.of(_scaffoldKey.currentContext!);

            // Push the dialog box to the navigator stack.
            await navigatorState.push(
              MaterialPageRoute(builder: (context) {
                return const AlertDialog(
                  title: Text("Please confirm your order"),
                  content: Text("Accept terms and conditions!"),
                );
              }),
            );
          },
          child: const Text(
            "Select the Product",
            style: TextStyle(
                fontSize: 20.0, fontFamily: 'UbuntuMono', color: Colors.black),
          ),
        ),
      ),
    ],
  );
  return listview;
}

// void SelectProduct(){

//   var dialogbox =AlertDialog(
//     title: Text("Plese confom Your Order"),
//     content: Text("Accsept term and conditions! "),
//   );
//   showDialog(context: context, builder: (BuildContext context) => dialogbox ;
// }

// class MyfirstApp extends StatelessWidget {
//   const MyfirstApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "My flutter app" ,
//       home: Scaffold(
//         appBar: AppBar(title: Text("My first  flutter app"),),
//         body: FirstScreen()
//       ),
//     );
//   }
// }
