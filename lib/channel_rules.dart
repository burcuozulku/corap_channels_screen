import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChannelRules extends StatefulWidget {
  @override
  _ChannelRulesState createState() => _ChannelRulesState();
}

class _ChannelRulesState extends State<ChannelRules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
              child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Color(0xffdee2ff),
                  centerTitle: true,
                  title: Text(
                    'KANAL KURALLARI',
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
                          boxDecoration("Genel Kanal Kuralları"),
                        ]),
                        Row(children: [
                          textDecoration(
                              "* Kayıt olunan Ad ve Soyad ile uyumlu kanallar olmalıdır.Farklı isimde kanalı olanlar kendilerine ait olduğunu doğrulamalıdır."),
                        ]),
                        Row(children: [
                          textDecoration("* Kanal gizli olmamalıdır."),
                        ]),
                        Row(children: [
                          textDecoration(
                              "* Görsel ve profil argo içermemelidir."),
                        ]),
                        Row(children: <Widget>[
                          textDecoration(
                              "* Organik olmayan yani sadece para kazanmak için oluşturulduğu izlenimini veren kanallar onaylanmayacaktır."),
                        ]),
                        Row(children: [
                          boxDecoration("Instagram Kanal Kuralları"),
                        ]),
                        Row(children: <Widget>[
                          textDecoration("* Profil fotoğrafı"),
                        ]),
                        Row(children: [
                          textDecoration("* Anlamlı bir açıklama"),
                        ]),
                        Row(children: [
                          textDecoration("* Minimum 10 gönderi"),
                        ]),
                        Row(children: [
                          textDecoration("* Minimum takipçi sayısı 100"),
                        ]),
                        Row(children: [
                          boxDecoration("Twitter Kanal Kuralları"),
                        ]),
                        Row(children: [
                          textDecoration("* Profil fotoğrafı"),
                        ]),
                        Row(children: [
                          textDecoration("* Anlamlı bir açıklama"),
                        ]),
                        Row(children: [
                          textDecoration("* Minimum 10 gönderi"),
                        ]),
                        Row(children: [
                          textDecoration("* Minimum takipçi sayısı 20"),
                        ]),
                        Row(children: [
                          boxDecoration("Facebook Kanal Kuralları"),
                        ]),
                        Row(children: <Widget>[
                          textDecoration("* Profil ve kapak fotoğrafı"),
                        ]),
                        Row(children: [
                          textDecoration("* Hakkımda sayfası"),
                        ]),
                        Row(children: [
                          textDecoration("* Minimum arkadaş sayısı 50"),
                        ]),
                        Row(children: [
                          boxDecoration("Tiktok Kanal Kuralları"),
                        ]),
                        Row(children: <Widget>[
                          textDecoration("* Profil fotoğrafı"),
                        ]),
                        Row(children: [
                          textDecoration("* Tanıtım yazısı"),
                        ]),
                        Row(children: [
                          textDecoration("* Minimum 5 gönderi"),
                        ]),
                        Row(children: [
                          textDecoration("* Minimum takipçi sayısı 20"),
                        ]),
                        Row(children: [
                          boxDecoration("Twitch Kanal Kuralları"),
                        ]),
                        Row(children: <Widget>[
                          textDecoration("* Profil fotoğrafı"),
                        ]),
                        Row(children: [
                          textDecoration("* Anlamlı bir açıklama"),
                        ]),
                        Row(children: [
                          boxDecoration("Linkedln Kanal Kuralları"),
                        ]),
                        Row(children: <Widget>[
                          textDecoration("* Profil fotoğrafı"),
                        ]),
                        Row(children: [
                          textDecoration("* Hakkında doldurulmalı"),
                        ]),
                        Row(children: [
                          textDecoration("* Deneyim doldurulmalı"),
                        ]),
                        Row(children: [
                          textDecoration("* Eğitim doldurulmalı"),
                        ]),
                        Row(children: [
                          boxDecoration("Snapchat Kanal Kuralları"),
                        ]),
                        Row(children: <Widget>[
                          textDecoration("* Profil fotoğrafı"),
                        ]),
                        Row(children: [
                          boxDecoration("Yuyyu Kanal Kuralları"),
                        ]),
                        Row(children: <Widget>[
                          textDecoration("* Profil fotoğrafı"),
                        ]),
                      ],
                    )),
              ],
            ),
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

  Widget textDecoration(String value) {
    return Expanded(
      child: Container(
        child: Text(
          value,
          style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
