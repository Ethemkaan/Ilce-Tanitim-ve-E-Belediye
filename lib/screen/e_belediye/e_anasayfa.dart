import 'package:d_d/screen/e_belediye/baskan.dart';
import 'package:d_d/screen/e_belediye/duyuru.dart';
import 'package:d_d/screen/e_belediye/etkinlik.dart';
import 'package:d_d/screen/e_belediye/hizmetler.dart';
import 'package:d_d/screen/e_belediye/ihale.dart';
import 'package:d_d/screen/e_belediye/talepler.dart';
import 'package:d_d/screen/ilce_tanitim/welcome_screen.dart';
import 'package:flutter/material.dart';

class EanaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.lightBlue.shade900,
        centerTitle: true,
        title: Text('E-BELEDİYE'),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.lightGreen.shade900,
                Colors.lightBlue.shade900,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Container(
                child: SizedBox(
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage("assets/logo.jpg"),
                        radius: 60,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextWidget(text: 'Develi Belediyesi'),
              SizedBox(height: 10),
              TextWidget(text: '1871'),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Baskan())
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade900,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'BELEDİYE BAŞKANI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Hizmetler())
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade900,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.apartment,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Hizmetler',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Ihaleler())
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade900,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.library_books,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'İhaleler',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Duyurular())
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade900,
                      borderRadius: BorderRadius.circular(50), // Kareyi oval yapar
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.announcement,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Duyurular',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Etkinlikler())
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade900,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.event,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Etkinlikler',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),
              InkWell(

                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TalepSayfasi())
                  );
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: Colors.lightBlue.shade900,
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HİZMET TALEPLERİ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.mouse,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
class TextWidget extends StatelessWidget {
  final String text;

  TextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white
      ),
    );
  }
}


