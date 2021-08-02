import 'package:corap_channel/channel_rules.dart';
import 'package:corap_channel/channels.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'adding_text_field.dart';
import 'background/background.dart';
import 'background/my_header.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  String dropdownValue = "Instagram";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Background(),
        Column(children: <Widget>[
          MyHeader(),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sisteme Kanal Ekle / Güncelle",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ]),
          ),
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 20),
                Expanded(
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    value: dropdownValue,
                    items: [
                      'Instagram',
                      'Facebook',
                      'Twitter',
                      'YouTube',
                      'Google',
                      'Tiktok',
                      'Twitch',
                      'Foursquare',
                      'WhatsApp',
                      'Telegram'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: GoogleFonts.poppins()),
                      );
                    }).toList(),
                    onChanged: (String? value1) {
                      setState(() {
                        dropdownValue = value1!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                AddingTextField(labeltext: 'Kanal Sayfası', maxLines: 1),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    radioButton("Profilde", Color(0xffB6BFFF), 0),
                    radioButton("Profilde değil", Color(0xffB6BFFF), 1),
                  ],
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 125.0, vertical: 22),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  color: Colors.grey[200],
                  child: Text(
                    "Kanal Kuralları  ",
                    style: GoogleFonts.poppins(
                        color: Colors.indigoAccent, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChannelRules()));
                  },
                ),
                SizedBox(height: 30.0),
                RaisedButton(
                  color: Colors.grey[200],
                  child: Text(
                    " Kanal Ekle / Güncelle  ",
                    style: GoogleFonts.poppins(color: Colors.indigoAccent),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Channels()));
                  },
                ),
              ],
            ),
          )
        ]),
      ]),
    );
  }

  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget radioButton(String value, Color color, int index) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0),
      child: FlatButton(
        color: currentindex == index ? color : Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: () {
          changeIndex(index);
        },
        child: Text(
          value,
          style: GoogleFonts.poppins(
              color: currentindex == index ? Colors.black : color),
        ),
      ),
    ));
  }
}
