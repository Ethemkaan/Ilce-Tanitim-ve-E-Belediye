import 'package:d_d/screen/ilce_tanitim/gezelim_gorelim.dart';
import 'package:d_d/screen/ilce_tanitim/iletisim.dart';
import 'package:d_d/screen/ilce_tanitim/tarihce.dart';
import 'package:d_d/screen/ilce_tanitim/welcome_screen.dart';
import 'package:d_d/screen/ilce_tanitim/yoresel_lezzetler.dart';
import 'package:flutter/material.dart';
class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff436796),

       body: SingleChildScrollView(
         child: Container(
           decoration: BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.topCenter,
               end: Alignment.bottomCenter,
               colors: [
                 Colors.blueGrey.shade300,
                 Color(0xff436796),

               ],
             ),
           ),
           child: Column(
             children: [
               SizedBox(
                 height: 250,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CircleAvatar(
                       backgroundImage:AssetImage("assets/logo.jpg"),
                       radius: 80,
                     ),
                   ],
                 ),
               ),
               Text("Develi Belediyesi " ,
               style: TextStyle(
                 fontSize: 25,
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
               ),),
               Text("1871",
                 style: TextStyle(
                   fontSize: 15,
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                 ),),
               Container(
                 padding:EdgeInsets.all(15.0) ,
                 margin: EdgeInsets.all(15.0),
                 color: Color(0xff24376F),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       "GEÇMİŞTEN BUGÜNE",
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 25,
                         color: Colors.white
                       ),
                     ),
                     IconButton(
                       iconSize: 20,
                       icon: const Icon(Icons.ads_click_sharp,
                       color: Colors.white,),
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Tarih())
                         );
                       },
                     ),
                   ],
                 ),
               ),
               Container(
                 padding:EdgeInsets.all(15.0) ,
                 margin: EdgeInsets.all(15.0),
                 color: Color(0xff60B2D7),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       "GEZELİM GÖRELİM",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 25,
                           color: Colors.white
                       ),
                     ),
                     IconButton(
                       iconSize: 20,
                       icon: const Icon(Icons.ads_click_sharp,color: Colors.white,),
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Gezelim())
                         );                   },
                     ),
                   ],
                 ),
               ),
               Container(
                 padding:EdgeInsets.all(15.0) ,
                 margin: EdgeInsets.all(15.0),
                 color: Color(0xff24376F),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       "YÖRESEL ÜRÜNLER",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 25,
                           color: Colors.white
                       ),
                     ),
                     IconButton(
                       iconSize: 20,
                       icon: const Icon(Icons.ads_click_sharp,color: Colors.white,),
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => YoreselLezzet())
                         );                   },
                     ),
                   ],
                 ),
               ),
               Container(
                 padding:EdgeInsets.all(15.0) ,
                 margin: EdgeInsets.all(15.0),
                 color: Color(0xff60B2D7),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(
                       "İLETİŞİM",
                       style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 25,
                           color: Colors.white
                       ),
                     ),
                     IconButton(
                       iconSize: 20,
                       icon: const Icon(Icons.ads_click_sharp,color: Colors.white,),
                       onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => Iletisim())
                         );
                       },
                     ),
                   ],
                 ),
               ),
               Container(
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: SizedBox(
                     child: ElevatedButton(
                       style: ButtonStyle(
                           backgroundColor: MaterialStatePropertyAll(Color(0xff60B2D7))
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())
                         );
                       },
                       child: Text(
                         "Geri",
                         style: TextStyle(
                             fontSize: 20,
                             color: Colors.white
                         ),
                       ),
                     ),
                   ),
                 ),
               )
             ],
           ),
         ),
       ),
    );
  }
}
