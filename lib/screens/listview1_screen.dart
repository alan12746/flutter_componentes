import 'package:flutter/material.dart';

var games = ["pow", "fornite", "pacman", "mortal kombat"];

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('listview1'),
        ),
        body: ListView(
          children: [
            //spread
            ...games
                .map((games) => ListTile(
                      title: Text(games),
                      trailing:
                          Icon(Icons.arrow_forward_ios, color: Colors.orange),
                      onTap: () {
                        var seleccion = games;
                        print(seleccion);
                      },
                    ))
                .toList(),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            )
          ],
        ));
  }
}
