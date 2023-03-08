import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widgets/Custom_listTile.dart';

class NotePadScreen extends StatelessWidget {
  const NotePadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                SizedBox(
                  height: Size.height / 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Notepad",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                SizedBox(
                  height: Size.height / 25,
                ),
                SizedBox(
                  height: Size.height / 15,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "search notes",
                        enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        border: const OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                        )),
                  ),
                ),
                SizedBox(
                  height: Size.height / 20,
                ),
                CustomListTile(
                  title: 'Todays grocery list',
                  subtitle: 'June 26,2022 08:05 PM',
                  color: Colors.green,
                ),
                SizedBox(
                  height: Size.height / 45,
                ),
                CustomListTile(
                  title: "Rich dad poor dad quotes",
                  subtitle: "June 22,2022 05:00 PM",
                  color: Colors.yellow,
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,size: 32,
          ),
          backgroundColor: Colors.yellow,
          
        ));
  }
}
