import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_d/screen/ilce_tanitim/yoresel_lezzetler.dart';
import 'package:flutter/material.dart';

class Gacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff60B2D7),
        centerTitle: true,
        title: Text("GACER",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => YoreselLezzet())
          );
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/gacer.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SizedBox(
                    height: 150,
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
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      'Sadece Kayseri’nin Develi ilçesinde yetişir.Zengin protein oranına sahip ve tam organik olması ile diğer ekmeklerden çok daha sağlıklı.'
                      ,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                      color: Colors.white,
                      child:Text(
                        'Hazmı kolay hale getiren ekmek, kilo problemi olanlar için de yeni bir seçenek olarak biliniyor. Develi’nin sadece 9 köyünde yetişen “Gacer” buğdayı, genetiği değiştirilmemiş olması ve zengin protein içermesi ile dikkatleri çekiyor.'
                        ,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                      color: Colors.white,
                      child:Text(
                        'Tanesinin kabuğundan zor ayrılan bir buğday olduğu için 1960’lardan sonra üretimi azalmıştır. Gacerden elde edilen buğday, un ve nişastadan; ekmek, çorba, pilav, dolma, kek ve pekmezle pişirilen dolaz adı verilen tatlının yapılması da mümkündür.'
                        ,style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                ),
                Container(
                    height: 200,
                    child: photo()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget photo() {
    return Container(
      height: 200,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: [
          'assets/gacer1.jpg',
          'assets/gacer2.jpg',
        ].map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

}
