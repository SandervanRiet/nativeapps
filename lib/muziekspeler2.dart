import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Track {
  String title;
  String artist;
  int year;
  String album;
  String genre;
  Image? artwork = null;
  String? file;
  bool isPlaying = false;
  bool hasStarted = false;

  Track(this.title, this.artist, this.year, this.album, this.genre);

  void setArtworkByFile(String artworkFile) {
    artwork = Image.asset(artworkFile);
  }

  void setFile(String filepath) {
    file = filepath;
  }

  void play() {
    hasStarted = true;
    isPlaying = true;
  }

  void pause() {
    isPlaying = false;
  }

  void stop() {
    hasStarted = false;
    isPlaying = false;
  }
}


void main() {
  runApp(start());
}

class start extends StatelessWidget {

  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      body: Player(),
      appBar: AppBar(title: Text("Titel van de app"),),
    ),
  );
}

class Player extends StatefulWidget {
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  List<Track> tracks = [];

  void add(String title, String artist, int year, String album, String genre, String filename) {
    Track track = Track(title, artist, year, album, genre);
    track.setArtworkByFile("assets/images/" + filename + ".jpg");
    track.setFile("audio/" + filename + ".mp3");
    tracks.add(track);
  }

  Widget build(BuildContext context) {
    add("bohemian", "Bon Iver", 2016, "22, A Million", "Folk/Electronic", "bohemian");
    add("mockingbirdCover", "Big Red Machine", 2018, "Big Red Machine", "Electronic/Pop", "mockingbirdCover");
    add("redhot", "Villagers", 2013, "{Awayland}", "Folk/Rock", "redhot");
    add("redhot", "Villagers", 2013, "{Awayland}", "Folk/Rock", "redhot");


    return Column(children: <Widget>[
      maakTrackRij(tracks[0]),
      maakTrackRij(tracks[1]),
      maakTrackRij(tracks[2]),
      maakTrackRij(tracks[3]),
    ]);
  }

  Container maakTrackRij(Track track) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
      padding: const EdgeInsets.only(top: 5.0),
      decoration: BoxDecoration(border: Border.all()),
      child: Container(
        padding: const EdgeInsets.only(bottom: 5.0, left: 10.0, right: 10.0),
        child: Row(children: [
          Expanded(
            flex: 7,
            child: Container(
              height: 70,
              child: Column(children: [
                Expanded(
                    child: Container(
                        child: RichText(
                            textScaleFactor: 1.2,
                            text: TextSpan(
                              text: track.title,
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                              children: <TextSpan>[
                                TextSpan(text: "  by ", style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300)),
                                TextSpan(text: track.artist, style: TextStyle(fontSize: 11, fontStyle: FontStyle.italic, fontWeight: FontWeight.w300))
                              ],
                            )))),
                Expanded(
                    child: Container(
                        child: RichText(
                          text: TextSpan(text: track.album, style: TextStyle(color: Colors.grey, fontSize: 16)),
                        ))),
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: RichText(
                            text: TextSpan(text: track.year.toString() + "     " + track.genre, style: TextStyle(color: Colors.grey[600], fontStyle: FontStyle.italic))
                        ))),
              ]),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: track.artwork,
            ),
          ),
          Expanded(
            child: Container(
              child: IconButton(
                onPressed: () {
                },
                icon: track.isPlaying ?
                Icon(Icons.pause, size: 40) :
                (track.hasStarted ? Icon(Icons.play_circle_outline, size: 40) : Icon(Icons.play_arrow, size: 40)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}