import 'package:d_d/screen/mekanlar/gereme.dart';
import 'package:d_d/screen/mekanlar/roma_mezari.dart';
import 'package:d_d/screen/mekanlar/sultan_sazligi.dart';
import 'package:flutter/material.dart';

import '../mekanlar/soysallı.dart';
import '../mekanlar/yeraltı_sehri.dart';
import 'anasayfa.dart';
class Gezelim extends StatelessWidget {
  const Gezelim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("--GEZELİM GÖRELİM--",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,            )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/tur.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: MyCardWidget(),
      ),
    );
  }
}
class MyCardWidget extends StatelessWidget {
  // MyCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        children: [
          SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage("assets/logo.jpg"),
                  radius: 50,
                ),
              ],
            ),
          ),
          Text("Develi Belediyesi " ,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          Text("1871",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SultanSazligi())
              );
            },
            child:  Container(
              padding:EdgeInsets.all(15.0) ,
              margin: EdgeInsets.all(15.0),
              color: Color(0xff24376F),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sultan Sazlığı",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Soysalli())
              );
            },
            child:  Container(
              padding:EdgeInsets.all(15.0) ,
              margin: EdgeInsets.all(15.0),
              color: Color(0xff60B2D7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Soysallı Büğleyen",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => YeraltiSehri())
              );
            },
            child:  Container(
              padding:EdgeInsets.all(15.0) ,
              margin: EdgeInsets.all(15.0),
              color: Color(0xff24376F),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Çomaklı Yer Altı Şehri",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Roma())
              );
            },
            child:  Container(
              padding:EdgeInsets.all(15.0) ,
              margin: EdgeInsets.all(15.0),
              color: Color(0xff60B2D7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ayşepınar Roma Mezarları ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Gereme())
              );
            },
            child:  Container(
              padding:EdgeInsets.all(15.0) ,
              margin: EdgeInsets.all(15.0),
              color: Color(0xff24376F),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gereme Harabeleri",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
