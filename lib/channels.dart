import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'selection.dart';
import 'selection_card.dart';

class Channels extends StatefulWidget {
  @override
  _ChannelsState createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
              child: Column(
            children: [
              AppBar(
                backgroundColor: Color(0xffdee2ff),
                centerTitle: true,
                title: Text(
                  'KANALLAR',
                  style: GoogleFonts.poppins(color: Colors.grey[600]),
                ),
              ),
              SizedBox(height: 10.0),
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(children: [
                        boxDecoration("Instagram"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("Facebook"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("Twitter"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("YouTube"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("Google"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("Tiktok"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("Twitch"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("Foursquare"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("WhatsApp"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      Row(children: [
                        boxDecoration("Telegram"),
                        ...List.generate(demoSelections.length, (index) {
                          return SelectionCard(
                              selection: demoSelections[index]);
                        })
                      ]),
                      SizedBox(height: 20.0),
                      Row(children: [
                        boxDecoration("Tumblr,SoundCloud,BigoLive,Reddit"),
                      ]),
                      SizedBox(height: 5.0),
                      Row(children: [
                        boxDecoration("Pinterest,Medium,Spotify,ClubHouse"),
                      ]),
                      SizedBox(height: 5.0),
                      Row(children: [
                        boxDecoration("Linkedln,TripAdvisor,Discord,Snapchat"),
                      ]),
                    ],
                  )),
            ],
          )),
        ]));
  }

  Widget boxDecoration(String value) {
    return Expanded(
      child: Container(
        width: 200,
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey[300],
        ),
        child: Text(
          value,
          style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
