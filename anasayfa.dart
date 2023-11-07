import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var d = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: anaRenk,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Prime Video",
          style: TextStyle(color: baslikRenk, fontFamily: "Amazon"),
        ),
        toolbarHeight: 20,
        backgroundColor: anaRenk,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const AspectRatio(
            aspectRatio: 16 / 9,
            child: Image(
              image: AssetImage('resimler/film.jpg'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Matrix",
                  style: TextStyle(
                      color: baslikRenk, fontSize: 30, fontFamily: "Amazon"),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: butonRenk),
                    child: Text(
                      d.butonYazi,
                      style: TextStyle(color: baslikRenk, fontFamily: "Amazon"),
                    )),
                Text(
                  d.filmAciklama,
                  style: TextStyle(color: yaziRenk, fontFamily: "Amazon"),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("resimler/keanu_reeves.jpg"),
                  ),
                  Chip(aktor: "Keanu Reeves"),
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage("resimler/carrie_anne_moss.jpg"),
                  ),
                  Chip(aktor: "Carrie Anne Moss"),
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage("resimler/laurence_fishburne.jpg"),
                  ),
                  Chip(aktor: "Laurence Fishburne"),
                ],
              ),
              Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("resimler/hugo_weaving.jpg"),
                  ),
                  Chip(aktor: "Hugo Weaving"),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(d.studyo,
                        style:
                            TextStyle(color: baslikRenk, fontFamily: "Amazon")),
                  ),
                  Text("Warner Bros",
                      style: TextStyle(color: yaziRenk, fontFamily: "Amazon")),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(d.tur,
                        style:
                            TextStyle(color: baslikRenk, fontFamily: "Amazon")),
                  ),
                  Text("Science Fiction, Action",
                      style: TextStyle(color: yaziRenk, fontFamily: "Amazon")),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Text(d.tarih,
                        style:
                            TextStyle(color: baslikRenk, fontFamily: "Amazon")),
                  ),
                  Text("1999",
                      style: TextStyle(color: yaziRenk, fontFamily: "Amazon")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}

class Chip extends StatelessWidget {
  String aktor;
  Chip({ required this.aktor });

  @override
  Widget build(BuildContext context) {
    return Text(
      aktor,
      style: TextStyle(color: yaziRenk, fontSize: 12, fontFamily: "Amazon"),
    );
  }
}
