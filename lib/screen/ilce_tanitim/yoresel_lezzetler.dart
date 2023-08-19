import 'package:d_d/screen/urunler/c%C4%B1v%C4%B1kl%C4%B1.dart';
import 'package:d_d/screen/urunler/gacer.dart';
import 'package:d_d/screen/urunler/kabak.dart';
import 'package:d_d/screen/urunler/kavun.dart';
import 'package:flutter/material.dart';

import '../urunler/sucuk.dart';
import 'anasayfa.dart';
class YoreselLezzet extends StatelessWidget {
  const YoreselLezzet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("--YÖRESEL ÜRÜNLER --",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/sazlık2.jpg"),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Civikli())
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
                    "Develi Cıvıklısı",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Gacer())
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
                    "Gacer",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kabak())
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
                    "Kabak Çekirdeği",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kavun())
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
                    "Topatan Kavunu ",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sucuk())
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
                    "Develi Sucuğu",
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
